/*

	***************************************************************************************************************
	***************************************    COMPILERS LABRORATORY   ********************************************
	***************************************         ASSIGNMENT 6       ********************************************
	***************************************      TARGET TRANSLATOR     ********************************************
	***************************************  SUBHAM GHOSH (20CS10065)  ********************************************
	***************************************  ANUBHAV DHAR (20CS30004)  ********************************************
	***************************************************************************************************************

*/


/* TEST OUTPUTS ARE OF THE EXTENSION ".s" AS ".asm" SEEMS TO BE NOT RECOGNIZED BY gcc */

#include "ass6_20CS10065_20CS30004_translator.h"


extern quad_array_class QUADARRAY;
extern symbol_table * curr_table, * global_table;

extern int temp_count;
extern int table_count;
extern int nextinstr;
extern string curr_type;
extern symbol * curr_sym;
extern int all_ok;

extern vector<string> string_constants;

string sourcefile, targetfile;
activation_record * curr_ar;

string ar1reg[] = {"dil", "dil", "edi", "edi", "edi", "rdi", "rdi", "rdi", "rdi"};
string ar2reg[] = {"sil", "sil", "esi", "esi", "esi", "rsi", "rsi", "rsi", "rsi"};	
string ar3reg[] = { "dl",  "dl", "edx", "edx", "edx", "rdx", "rdx", "rdx", "rdx"};
string ar4reg[] = { "cl",  "cl", "ecx", "ecx", "ecx", "rcx", "rcx", "rcx", "rcx"};
string retreg[] = { "al",  "al", "eax", "eax", "eax", "rax", "rax", "rax", "rax"};
string * argumentreg[] = {NULL, ar1reg, ar2reg, ar3reg, ar4reg};

int char_to_int(string char_const){
	if(char_const[1] != '\\'){
		return (int)char_const[(int)char_const.size() - 1];
	}
	// else it is an escape sequence
	switch(char_const[2]){
		case '0' : return 0;
		case 'a' : return 7;
		case 'b' : return 8;
		case 'f' : return 12;
		case 'n' : return 10;
		case 'r' : return 13;
		case 't' : return 9;
		case 'v' : return 11;
		default  : return (int)char_const[(int)char_const.size() - 1];
	}
	return (int)char_const[(int)char_const.size() - 1];
}

inline string get_param_reg(int param_index, int sz){
	return "%" + argumentreg[param_index][sz];
}

inline string get_stack_location(string param, symbol_table * table_ptr = curr_table){
	if(table_ptr == global_table){
		return param;
	}
	return (table_ptr -> ST_ar -> ar_offset.find(param) == table_ptr -> ST_ar -> ar_offset.end()) ? get_stack_location(param, table_ptr -> parent_table) : (to_string(table_ptr -> ST_ar -> ar_offset[param]) + "(%rbp)");
}

void set_param(string param, int param_index){

	symbol * sym = curr_table -> lookup(param);
	int sz = get_size(sym -> type);


	cout << "\tmov"; fflush(stdout);
	if(sz == 8 || sym -> type[0] == 'a'){
		cout << 'q'; fflush(stdout);
	}else{
		cout << ((sz == 1) ? 'b' : 'l'); fflush(stdout);
	}

	cout << "\t" << get_param_reg(param_index, sz) << ", " << get_stack_location(param) << '\n'; fflush(stdout);
}

void retrieve_param(string param, int param_index){

	symbol * sym = curr_table -> lookup(param);
	int sz = get_size(sym -> type);


	cout << "\tmov"; fflush(stdout);
	if(sz == 8 || sym -> type[0] == 'a'){
		cout << 'q'; fflush(stdout);
	}else{
		cout << ((sz == 1) ? 'b' : 'l'); fflush(stdout);
	}

	cout << "\t" << get_stack_location(param) << ", " << get_param_reg(param_index, sz) << '\n'; fflush(stdout);
}

inline bool is_temporary(string var){
	if(var[0] != 't'){
		return false;
	}
	for(int i = 1; i < (int)var.size(); ++i){
		if(var[i] > '9' || var[i] < '0'){
			return false;
		}
	}
	return true;
}
	
inline void print_group_info(){
	cout << "#	***************************************************************************************************************\n"; fflush(stdout);
	cout << "#	****************************************  COMPILERS LABRORATORY   *********************************************\n"; fflush(stdout);
	cout << "#	****************************************      ASSIGNMENT 6        *********************************************\n"; fflush(stdout);
	cout << "#	****************************************    x86-64 TARGET CODE    *********************************************\n"; fflush(stdout);
	cout << "#	**************************************** SUBHAM GHOSH (20CS10065) *********************************************\n"; fflush(stdout);
	cout << "#	**************************************** ANUBHAV DHAR (20CS30004) *********************************************\n"; fflush(stdout);
	cout << "#	***************************************************************************************************************\n"; fflush(stdout);
}

inline void dbg(int l){
	cout << "#\t\t\t LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : " << l << " :: curr_table = " << curr_table -> ST_name << '\n'; fflush(stdout);
}

int find_offset(string s){
	symbol_table * table_ptr = curr_table;
	do{
		if(table_ptr -> ST_ar -> ar_offset.find(s) != table_ptr -> ST_ar -> ar_offset.end()){
			return table_ptr -> ST_ar -> ar_offset[s];
		}
	}while((table_ptr = table_ptr -> parent_table) != global_table);
	return 0;
}

void gen_target_code(){

	// generating labels for functions
	vector<string> to_label(nextinstr + 20 /* just to be safe */, "");
	int n_label = 0;
	for(quad * q : QUADARRAY){
		if(q -> op == "label"){
			to_label[q -> addr] = ".LFB" + to_string(n_label);
		}else if(q -> op == "lebal"){
			to_label[q -> addr] = ".LFE" + to_string(n_label++);
		}
	}
	for(quad * q : QUADARRAY){
		if((q -> op == "<" || q -> op == ">" || q -> op == "<=" || q -> op == ">=" || q -> op == "==" || q -> op == "!=" || q -> op == "goto") && to_label[stoi(q -> res)] == ""){
			to_label[stoi(q -> res)] = ".L" + to_string(n_label++);
		}
	}


	cout << "\t.file\t\"" << sourcefile << "\"\n\n"; fflush(stdout); dbg(__LINE__);

	if(string_constants.size()){
		cout << "\t.section\t.rodata\n"; fflush(stdout); dbg(__LINE__);
		for(int i = 0; i < (int)string_constants.size(); ++i){
			cout << ".LC" << i << ":\n\t.string\t" << string_constants[i] << '\n';  fflush(stdout); dbg(__LINE__);
		}
	}


	for(auto sym : global_table -> SYM){
		if(sym.second.init_val == "" && sym.second.type != "func"){
			cout << "\t.comm\t" << sym.first << ", " << sym.second.size << ", " << sym.second.size << "\n";  fflush(stdout); dbg(__LINE__);
		}
	}

	for(auto & sym : global_table -> SYM){
		if(sym.second.type == "func"){
			cout << "# " << sym.second.name << "\n";
			for(auto &it : sym.second.nested_table -> ST_ar -> ar_offset){
				cout << "#\t" << it.first << " : " << it.second << '\n';
			}
		}
	}

	int func_depth = 0;
	int global_temp_int, global_temp_char;
	string global_temp_string;
	stack<string> param_stack;
	string end_of_function;

	for(quad * q : QUADARRAY){

		cout << '\n'; fflush(stdout); dbg(__LINE__);
		q -> print();
		if(q -> op == "label_block"){
			curr_table = curr_table -> lookup("ST_" + q -> res) -> nested_table;
			curr_ar = curr_table -> ST_ar;		
			cout << to_label[q -> addr] << ":\n"; fflush(stdout); dbg(__LINE__);

		}else if(q -> op == "lebal_block"){
			curr_table = curr_table -> parent_table;
			curr_ar = curr_table -> ST_ar;
		}else if(q -> op == "label"){ // function start : print function prologue
			if(!func_depth){
				cout << "\t.text\n"; fflush(stdout); dbg(__LINE__);
				++func_depth;
			}

			curr_table = global_table -> lookup(q -> res) -> nested_table;
			curr_ar = curr_table -> ST_ar;
			end_of_function = to_label[q -> addr].substr(0, 3) + "E" + to_label[q -> addr].substr(4);

			cout << "# function prologue for function " << q -> res << '\n'; fflush(stdout); dbg(__LINE__);
			cout << "\t.global\t" << q -> res << '\n'; fflush(stdout); dbg(__LINE__);
			cout << "\t.type\t" << q -> res << ", @function\n"; fflush(stdout); dbg(__LINE__);
			cout << q -> res << ":\n"; fflush(stdout); dbg(__LINE__);
			cout << to_label[q -> addr] << ":\n"; fflush(stdout); dbg(__LINE__);
			cout << "\t.cfi_startproc\n"; fflush(stdout); dbg(__LINE__);
			cout << "\tpushq\t%rbp\n";  fflush(stdout); dbg(__LINE__);
			cout << "\t.cfi_def_cfa_offset 16\n"; fflush(stdout); dbg(__LINE__);
			cout << "\t.cfi_offset 6, -16\n"; fflush(stdout); dbg(__LINE__);
			cout << "\tmovq\t%rsp, %rbp\n"; fflush(stdout); dbg(__LINE__);
			cout << "\t.cfi_def_cfa_register\t6\n"; fflush(stdout); dbg(__LINE__);
			cout << "\tsubq\t$" << -(curr_ar -> tot_ar_offset) << ", %rsp\n"; fflush(stdout); dbg(__LINE__);

			// set the parameters
			for(int i = 0; i < (int)(curr_table -> param_list.size()); ++i){
				set_param(curr_table -> param_list[i], i + 1);
			}
		}else if(q -> op == "lebal"){ // function ends : print function epilogue
			--func_depth;
			curr_table = global_table;
			cout << "# function epilogue for function " << q -> res << '\n'; fflush(stdout); dbg(__LINE__);
			cout << to_label[q -> addr] << ":\n"; fflush(stdout); dbg(__LINE__);
			cout << "\tmovq\t%rbp, %rsp\n"; fflush(stdout); dbg(__LINE__);
			cout << "\tpopq\t%rbp\n"; fflush(stdout); dbg(__LINE__);
			cout << "\t.cfi_def_cfa 7, 8\n"; fflush(stdout); dbg(__LINE__);
			cout << "\tret\n"; fflush(stdout); dbg(__LINE__);
			cout << "\t.cfi_endproc\n"; fflush(stdout); dbg(__LINE__);
			cout << "\t.size\t" << q -> res << ", .-" << q -> res << '\n'; fflush(stdout); dbg(__LINE__);
		}else if(!func_depth){
			curr_sym = global_table -> lookup(q -> res);
			if(is_temporary(curr_sym -> name)){
				if(curr_sym -> type == "int"){
					global_temp_int = stoi(q -> a1);
				}else if(curr_sym -> type == "char"){
					global_temp_char = char_to_int(q -> a1);
				}else if(curr_sym -> type == "char*"){
					global_temp_string = ".LC" + q -> a1;
				}
			}else{
				if(curr_sym -> type == "int"){
					cout << "\t.globl\t" << curr_sym -> name << '\n'; fflush(stdout); dbg(__LINE__);
					cout << "\t.data\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.align\t4\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.type\t" << curr_sym -> name << ", @object\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.size\t" << curr_sym -> name << ", 4\n"; fflush(stdout); dbg(__LINE__);
					cout << curr_sym -> name << ":\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.long\t" << global_temp_int << '\n';  fflush(stdout); dbg(__LINE__);
				}else if(curr_sym -> type == "char"){
					cout << "\t.globl\t" << curr_sym -> name << '\n'; fflush(stdout); dbg(__LINE__);
					cout << "\t.data\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.type\t" << curr_sym -> name << ", @object\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.size\t" << curr_sym -> name << ", 1\n"; fflush(stdout); dbg(__LINE__);
					cout << curr_sym -> name << ":\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.byte\t" << global_temp_char << '\n'; fflush(stdout); dbg(__LINE__);
				}else if(curr_sym -> type == "char*"){
					cout << "\t.section\t.data.rel.local\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.align\t8\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.type\t" << curr_sym -> name << ", @object\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.size\t" << curr_sym -> name << ", 8\n"; fflush(stdout); dbg(__LINE__);
					cout << curr_sym -> name << ":\n"; fflush(stdout); dbg(__LINE__);
					cout << "\t.quad\t" << global_temp_int << '\n';  fflush(stdout); dbg(__LINE__);
				}
			}
		}else{
			if(to_label[q -> addr].size()){
				cout << to_label[q -> addr] << ":\n"; fflush(stdout); dbg(__LINE__);
			}

			if(q -> op == ""){
				if(q -> a1[0] >= '0' && q -> a1[0] <= '9'){
					cout << "\tmovl\t$" << q -> a1 << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
				}else if(q -> a1[0] == '\''){
					cout << "\tmovb\t$" << char_to_int(q -> a1) << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
				}else{
					switch(curr_table -> lookup(q -> a1) -> size){
						case 1:
								cout << "\tmovb\t" << get_stack_location(q -> a1) << ", %" << retreg[1] << "\n"; fflush(stdout); dbg(__LINE__);
								cout << "\tmovb\t%" << retreg[1] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
								break;  
						case 4:
								cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n"; fflush(stdout); dbg(__LINE__);
								cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
								break;
						default:
								cout << "\tmovq\t" << get_stack_location(q -> a1) << ", %" << retreg[8] << "\n"; fflush(stdout); dbg(__LINE__);
								cout << "\tmovq\t%" << retreg[8] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
								break;
					}
				}
			}else if(q -> op == "=str"){
				cout << "\tmovq\t$.LC" << q -> a1 << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "param"){
				param_stack.push(q -> a1);
			}else if(q -> op == "call"){
				int param_cnt = stoi(q -> a2);
				while(param_cnt){
					retrieve_param(param_stack.top(), param_cnt);
					param_stack.pop();
					--param_cnt;
				}

				cout << "\tcall\t" << q -> a1 << "\n"; fflush(stdout); dbg(__LINE__);

				switch(curr_table -> lookup(q -> res) -> size){
					case 0:
							break;
					case 1:
							cout << "\tmovb\t%" << retreg[1] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
							break;  
					case 4:
							cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
							break;
					default:
							cout << "\tmovq\t%" << retreg[8] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
							break;
				}

			}else if(q -> op == "return"){
				if(q -> a1.size()){
					switch(curr_table -> lookup(q -> a1) -> size){
						case 1:
								cout << "\tmovb\t" << get_stack_location(q -> a1) << ", %" << retreg[1] << "\n"; fflush(stdout); dbg(__LINE__);
								break;  
						case 4:
								cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n"; dbg(__LINE__);
								break;
						default:
								cout << "\tmovq\t" << get_stack_location(q -> a1) << ", %" << retreg[8] << "\n"; fflush(stdout); dbg(__LINE__);
								break;
					}
				}
				cout << "\tjmp\t" << end_of_function << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "goto"){
				cout << "\tjmp\t" << to_label[stoi(q -> res)] << '\n';  fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "<" || q -> op == ">" || q -> op == "<=" || q -> op == ">=" || q -> op == "==" || q -> op == "!="){
				string mi, ci, ji, mr;
				switch(curr_table -> lookup(q -> a1) -> size){
					case 1:
							mi = "movb";
							ci = "cmpb";
							mr = "%" + retreg[1];
							break;  
					case 4:
							mi = "movl";
							ci = "cmpl";
							mr = "%" + retreg[4];
							break;
					default:
							mi = "movq";
							ci = "cmpq";
							mr = "%" + retreg[8];
							break;
				}

				if(q -> op == "=="){
					ji = "je";
				}else if(q -> op == "<"){
					ji = "jl";
				}else if(q -> op == "<="){
					ji = "jle";
				}else if(q -> op == "!="){
					ji = "jne";
				}else if(q -> op == ">"){
					ji = "jg";
				}else if(q -> op == ">="){
					ji = "jge";
				}

				cout << "\t" << mi << "\t" << get_stack_location(q -> a2) << ", " << mr << "\n"; fflush(stdout); dbg(__LINE__);
				cout << "\t" << ci << "\t" << mr << ", " << get_stack_location(q -> a1) << "\n"; fflush(stdout); dbg(__LINE__);
				cout << "\t" << ji << "\t" << to_label[stoi(q -> res)] << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "+"){
				if(q -> res == q -> a1 && q -> a2 == "1"){ // increment
					cout << "\tincl\t" << get_stack_location(q -> a1) << '\n'; fflush(stdout); dbg(__LINE__);
				}else{ 
					cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
					cout << "\taddl\t" << get_stack_location(q -> a2) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
				}
			}else if(q -> op == "-"){
				if(q -> a2 == ""){ // unary minus
					cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
					cout << "\tnegl\t%" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
				}else if(q -> res == q -> a1 && q -> a2 == "1"){ // decrement
					cout << "\tdecl\t" << get_stack_location(q -> a1) << '\n'; fflush(stdout); dbg(__LINE__);
				}else{
					cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
					cout << "\tsubl\t" << get_stack_location(q -> a2) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
				}
			}else if(q -> op == "*"){
				cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
				cout << "\timull\t" << ((q -> a2[0] >= '0' && q -> a2[0] <= '9') ? "$" : "") << get_stack_location(q -> a2) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
				cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "/" || q -> op == "%"){
				cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
				cout << "\tcdq\n"; fflush(stdout); dbg(__LINE__);
				cout << "\tidivl\t" << get_stack_location(q -> a2) << '\n'; fflush(stdout); dbg(__LINE__);
				cout << "\tmovl\t%" << ((q -> op == "/") ? retreg[4] : ar3reg[4]) << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "=&"){
				cout << "\tleaq\t" << get_stack_location(q -> a1) << ", %" << retreg[8] << '\n'; fflush(stdout); dbg(__LINE__);
				cout << "\tmovq\t%" << retreg[8] << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "=*"){
				cout << "\tmovq\t" << get_stack_location(q -> a1) << ", %" << retreg[8] << "\n"; fflush(stdout); dbg(__LINE__);
				cout << "\tmovl\t(%" << retreg[8] << "), %" << retreg[4] << '\n';  fflush(stdout); dbg(__LINE__);
				cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "*="){
				cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n";  fflush(stdout); dbg(__LINE__);
				cout << "\tmovq\t" << get_stack_location(q -> res) << ", %rbx" << '\n'; fflush(stdout); dbg(__LINE__);
				cout << "\tmovl\t%" << retreg[4] << ", (%rbx)\n";  fflush(stdout); dbg(__LINE__);
			}else if(q -> op == "[]="){
				symbol * sym = curr_table -> lookup(q -> res);
				cout << "\tmovl\t" << get_stack_location(q -> a1) << ", %" << retreg[4] << "\n"; fflush(stdout); dbg(__LINE__);
				cout << "\tcltq\n"; fflush(stdout); dbg(__LINE__);
				if(sym -> is_parameter){
					cout << "\taddq\t" << get_stack_location(q -> res) << ", %" << retreg[8] << "\n"; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t" << get_stack_location(q -> a2) << ", %" << "ebx\n"; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << "ebx, (%" << retreg[8] << ")\n";  fflush(stdout); dbg(__LINE__);
				}else{
					cout << "\tmovl\t" << get_stack_location(q -> a2) << ", %" << "ebx\n"; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << "ebx, " << find_offset(q -> res) << "(%rbp, %" << retreg[8] << ", 1)\n"; fflush(stdout); dbg(__LINE__);
				}
			}else if(q -> op == "=[]"){
				symbol * sym = curr_table -> lookup(q -> a1);
				cout << "\tmovl\t" << get_stack_location(q -> a2) << ", %" << retreg[4] << "\n"; fflush(stdout); dbg(__LINE__);
				cout << "\tcltq\n"; fflush(stdout); dbg(__LINE__);
				if(sym -> is_parameter){
					cout << "\taddq\t" << get_stack_location(q -> a1) << ", %" << retreg[8] << "\n"; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t(%" << retreg[8] << "), %" << retreg[4] << '\n'; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << retreg[4] << ", %" << get_stack_location(q -> res) << '\n'; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << "ebx, (%" << retreg[8] << ")\n";  fflush(stdout); dbg(__LINE__);
				}else{
					cout << "\tmovl\t" << find_offset(q -> a1) << "(%rbp, %" << retreg[8] << ", 1), %" << retreg[4] << "\n"; fflush(stdout); dbg(__LINE__);
					cout << "\tmovl\t%" << retreg[4] << ", " << get_stack_location(q -> res) << "\n"; fflush(stdout); dbg(__LINE__);
				}
			}
		}
		cout << "\n\n"; fflush(stdout);
	}
}







//////////////////////////////////////////////////////// MAIN FUNCTION ////////////////////////////////////////////////////////

int main(int argc, char * argv[]){
    
    // yydebug = 1; // commenting this as we no longer want debugging information
    
    // file may be supplied as a command line argument
    sourcefile = "stdin"; 
	if(argc > 1){
		if(!(yyin = fopen(argv[1], "r"))){
			perror(argv[1]);
			return(1);
		}
		sourcefile = string(argv[1]);
		string destfile = sourcefile;
		if(sourcefile.size() > 2){
			destfile.push_back('.');
			destfile.push_back('s'); 
		}
		freopen(destfile.c_str(), "w",stdout);
	}

	global_table = curr_table = new symbol_table("ST_global");
	curr_type = "void";

	// parsing
	yyparse();
	// emit("END_OF_PROGRAM", "", "label");
	global_table -> update();

	cerr << " ################################### parsing complete ######################################## \n";

	if(!all_ok){
		cout << "\n\n ----------------------- SYNTAX ERROR FOUND ON LINE " << line_count << ", GENERATION OF THREE ADDRESS CODE INCOMPLETE ----------------------- \n\n"; fflush(stdout);
		cerr << "\n\n ----------------------- SYNTAX ERROR FOUND ON LINE " << line_count << ", GENERATION OF THREE ADDRESS CODE INCOMPLETE ----------------------- \n\n";
		return(1);
	}

	// outputting Three Adress Code
	print_group_info();
	cout << "\n\n\n#############################################################################################################################################################\n\n"; fflush(stdout);
	cout << "# \t\t\t\tTARGET IS AS FOLLOWS (not printing it in any \".cout\" file as it will be our executables"; fflush(stdout);
	cout << "\n\n#############################################################################################################################################################\n\n"; fflush(stdout);
	TAC_print();
	cout << "\n\n\n#############################################################################################################################################################\n\n"; fflush(stdout);
	cout << "\n\n\n#############################################################################################################################################################\n\n"; fflush(stdout);

	// generating target code
	gen_target_code();
	
	return 0;

}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
