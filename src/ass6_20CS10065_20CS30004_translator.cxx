////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*

	***************************************************************************************************************
	****************************************   COMPILERS LABRORATORY  *********************************************
	****************************************       ASSIGNMENT 6       *********************************************
	****************************************    TRANSLATOR PROGRAM    *********************************************
	**************************************** SUBHAM GHOSH (20CS10065) *********************************************
	**************************************** ANUBHAV DHAR (20CS30004) *********************************************
	***************************************************************************************************************	

*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#include "ass6_20CS10065_20CS30004_translator.h"

using namespace std;

quad_array_class QUADARRAY;
symbol_table * curr_table, * global_table;

int temp_count = 0;
int table_count = 0;
int nextinstr = START_ADDRESS;
string curr_type;
symbol * curr_sym;

vector<string> string_constants;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








////////////////////////////////////////////////// SYMBOL FUNCTIONS ///////////////////////////////////////////////////////////

// symbol Constructor
symbol::symbol(string name, string type, int size, symbol_table * belonging_table, symbol_table * nested_table, string init_val) 
	: name(name), type(type), size(size), belonging_table(belonging_table), nested_table(nested_table), init_val(init_val) {}

symbol::symbol() {} 

// symbol::symbol(string name, string type, int size, symbol_table * belonging_table) 
	// : name(name), type(type), size(size), belonging_table(belonging_table), nested_table(NULL) {}

// helper function of symbol::update()
int get_size(string type){

	const int size_of_int = 4;
	const int size_of_char = 1;
	const int size_of_float = 8;
	const int size_of_ptr = 8; // THIS WAS GIVEN AS 4 IN THE ASSIGNMENT

	if(type == "void" || type == "func"){
		return 0;
	}else if (type == "char"){
		return size_of_char;
	}else if (type == "int"){
		return size_of_int;
	}else if(type.back() == '*'){ // This means it is some kind of a pointer
		return size_of_ptr;
	}else if (type == "float"){
		return size_of_float;
	}else if (type[0] == 'a'){ // this is some kind of an array: following the format array(<INTEGER><COMMA><SPACE><ELEMENT TYPE>)
		int sz = 0, i;
		for(i = 6; type[i] != ','; ++i){ // basically converts string to int until a comma is seen
			sz *= 10;
			sz += type[i] - '0';
		}
		++i;
		sz *= get_size(type.substr(i + 1, (type.size() - 1 - 1) - (i + 1) + 1)); // get the size of each element of the array

	// #ifdef __DEBUG_PERSONAL
		// cerr << "\n\n\n########################### size(" << type << ") = " << sz << " ::: " << (type.substr(i + 1, (type.size() - 1 - 1) - (i + 1) + 1)) << "  ##########################\n\n\n\n";
	// #endif

		return sz;

	}else{
		cerr << "UNKNOWN TYPE <" << type << "> ON LINE " << line_count << ".\n";
		return -1;
	}
}

// symbol type updater
void symbol::update(string new_type){
	type = new_type;
	size = get_size(new_type);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








////////////////////////////////////////////////// SYMBOL TABLE FUNCTIONS /////////////////////////////////////////////////////

// Constructor
symbol_table::symbol_table(string name, symbol_table * par) : ST_name(name), parent_table(par) { ++table_count;}

// lookup function for the symbol table 
symbol * symbol_table::lookup(string name){
	for(symbol_table * ST_ptr = this; ST_ptr; ST_ptr = ST_ptr -> parent_table){
		auto ptr = (ST_ptr -> SYM).find(name);
		if(ptr != (ST_ptr -> SYM).end()){
			return &(ptr -> second);
		}
	}
	
	SYM[name] = symbol(name, "void", 0, this); // inserting symbol with this name 
	return &(SYM.find(name) -> second);
}

// generates temporary
symbol * symbol_table::gentemp(string temp_type){
	++temp_count;
	SYM["t" + to_string(temp_count)] = symbol("t" + to_string(temp_count), temp_type, get_size(temp_type), this);
	return &(SYM.find("t" + to_string(temp_count)) -> second);
}


// Updating the offset entry of the symbol table 
int symbol_table::update(int of){
	vector<symbol_table * > to_update;
	for(auto& it : SYM){
		it.second.offset = of;
		if(it.second.nested_table){
			it.second.size = 0;
			it.second.type = (this == global_table) ? "func" : "block";
		}
		of += it.second.size;
		if(it.second.nested_table){ // for updating nested tables
			to_update.push_back(it.second.nested_table);
		}
	}

	ST_ar = new activation_record();
	for(auto sym : SYM){
		if(sym.second.is_parameter && sym.second.size){
			ST_ar -> tot_ar_offset = -(sym.second.offset + sym.second.size);
			ST_ar -> ar_offset[sym.second.name] = ST_ar -> tot_ar_offset;
		}
	}

	for(auto sym : SYM){
		if(!sym.second.is_parameter && sym.second.name != "_retval" && sym.second.size){
			// cerr << sym.second.name << " is considered in " << ST_name << "\n";
			ST_ar -> tot_ar_offset = -(sym.second.offset + sym.second.size);
			ST_ar -> ar_offset[sym.second.name] = ST_ar -> tot_ar_offset;
		}
	}

	for(symbol_table * table_ptr : to_update){
		ST_ar -> tot_ar_offset += table_ptr -> update((this == global_table) ? 0 : of);
	}
	return ST_ar -> tot_ar_offset;
}

// Printing the symbol_table
void symbol_table::print(){
	const int WD = 30;
	vector<symbol_table *> ST_children;

	cout << "\n\n# ==============================================================================================================================================================================================\n";
	cout << "# \t SYMBOL TABLE : " << ST_name << "\t\t (Parent Table : " << (parent_table ? parent_table -> ST_name : "NULL") << ")\t\t tot_ar_offset = " << ST_ar -> tot_ar_offset << "\n";
	cout << "# ..............................................................................................................................................................................................\n\n";

	cout << "# " << setw(WD) << "Name" << setw(WD) << "Type" << setw(WD) << "Initial Value" << setw(WD) << "Size" << setw(WD) << "Offset" << setw(WD) << "Nested Table\n";
	cout << "# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n";
	for(auto& it : SYM){
		cout << "# " << setw(WD) << it.second.name << setw(WD) << it.second.type << setw(WD) << it.second.init_val << setw(WD) << it.second.size << setw(WD) << it.second.offset << setw(WD) << (it.second.nested_table ? it.second.nested_table -> ST_name : "NULL") << "\n";
		if(it.second.nested_table){
			ST_children.push_back(it.second.nested_table);
		}
	}
	cout << "# ##############################################################################################################################################################################################\n\n\n";

	for(symbol_table * child : ST_children){
		child -> print();
	}
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








//////////////////////////////////////////////////////// QUAD FUNCTIONS ///////////////////////////////////////////////////////

// quad constructor
quad::quad(int addr, string res, string a1, string op, string a2) : addr(addr), res(res), a1(a1), op(op), a2(a2) {}

void quad::print(){
	if(op == "label"){
		cout << "# " << addr << ":\t" << res << ":\n";
		fflush(stdout);
		return; 	
	}else if(op == "label_block"){
		cout << "# " << addr << ":\t" << res << ": #block\n";
		fflush(stdout);
		return;
	}else if(op == "lebal_block"){
		cout << "# " << addr << ":\tEND_" << res << ": #block\n";
		fflush(stdout);
		return;	
	}else if(op == "lebal"){
		cout << "# " << addr << ":\tEND_" << res << ":\n";
		fflush(stdout);
		return;	
	}
	cout << "# " << addr << ":\t\t";
	if(a2 == ""){
		if(op == ""){
			cout << res << " = " << a1 << "\n";
		}else if(op == "goto"){
			cout << "goto " << res << '\n';
		}else if(op == "param"){
			cout << "param " << a1 << '\n';
		}else if(op == "return"){
			cout << "return " << a1 << '\n';
		}else if(op.substr(0, 4) == "conv"){
			cout << res << "= " << op << "(" << a1 << ")\n";
		}else if(op == "=*"){
			cout << res << " = *" << a1 << '\n';	
		}else if(op == "*="){
			cout << "*" << res << " = " << a1 << '\n';
		}else if(op == "=&"){
			cout << res << " = &" << a1 << '\n';	
		}else if(op == "=str"){
			cout << res << " = " << string_constants[stoi(a1)] << '\n';
		}else{
			cout << res << " = " << op << a1 << '\n';
		}
		fflush(stdout);
		return;
	}
	if(op == "<" || op == ">" || op == "<=" || op == ">=" || op == "==" || op == "!="){
		cout << "if " << a1 << " " << op << " " << a2 << " goto " << res << '\n';
	}else if(op == "call"){
		if(res != ""){
			cout << res << " = ";
		}
		cout << "call " << a1 << ", " << a2 << '\n';
	}else if(op == "=[]"){
		cout << res << " = " << a1 << "[" << a2 << "]\n";
	}else if(op == "[]="){
		cout << res << "[" << a1 << "] = " << a2 << "\n";
	}else{
		cout << res << " = " << a1 << " " << op << " " << a2 << '\n';
	}
	fflush(stdout);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








////////////////////////////////////////////////// ACTIVATION RECORD FUNCTIONS ////////////////////////////////////////////////

activation_record::activation_record() : tot_ar_offset(0), ar_offset(map<string, int>()) {}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








////////////////////////////////////////////////// QUADARRAY MANAGING FUNCTIONS ///////////////////////////////////////////////

// printing the quadarray
inline void print_quads(){
	for(quad * qptr : QUADARRAY){
		qptr -> print();
	}
}

// populating the quadarray
void emit(string res, string a1, string op, string a2){
	// cerr << "\n\n\n############ EMITTING #########\n\n\n";
	QUADARRAY.push_back(new quad(nextinstr++, res, a1, op, a2));
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








/////////////////////////////////////////////////// BACKPATCHING FUNCTIONS ////////////////////////////////////////////////////
void backpatch(vector<int> L, int loc){
	for(int i : L){
		quad * qptr = QUADARRAY[i - START_ADDRESS];
		qptr -> res = to_string(loc);
	}
}

vector<int> makelist(int loc){
	return vector<int>(1, loc);
}

vector<int> merge(vector<int> V1, vector<int> V2){
	vector<int> V;
	for(int x : V1){
		V.push_back(x);
	}
	for(int x : V2){
		V.push_back(x);
	}
	return V;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////// OTHER GLOBAL FUNCTIONS ////////////////////////////////////////////////////

// checks if E1 = E2 is a valid assignment (returns 1 if types match, returns 2 if type of E1 = convertE2toE1(E2) is possible, 0 otherwise)
int typecheck(symbol *  E1, symbol * E2){
	if(E1 -> type == E2 -> type){
		return 1;
	}
	if(E1 -> type == "char" || E1 -> type == "int" || E1 -> type == "float"){
		if(E2 -> type == "char" || E2 -> type == "int" || E2 -> type == "float"){
			return 2;
		}
	}
	if(E1 -> name.back() == '*' && E2 -> type == "void*"){
		return 2;
	}
	return 0;
}
int typecheck(string E1_type, symbol * E2){
	if(E1_type == E2 -> type){
		return 1;
	}
	if(E1_type == "char" || E1_type == "int" || E1_type == "float"){
		if(E2 -> type == "char" || E2 -> type == "int" || E2 -> type == "float"){
			return 2;
		}
	}
	if(E1_type.back() == '*' && E2 -> type == "void*"){
		return 2;
	}
	return 0;
}


symbol * convert(string from, string to, symbol * E){
	if(to == from || to.back() == '*'){
		return E;
	}
	symbol * conv_tmp = curr_table -> gentemp(to);
	emit(conv_tmp -> name, E -> name, "convert_" + from + "_2_" + to);
	return conv_tmp;
}


void TAC_print(){
	global_table -> print();
	cout << "\n\n\n";
	print_quads();
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


