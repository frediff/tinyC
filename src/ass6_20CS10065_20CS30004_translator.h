/*

	***************************************************************************************************************
	***************************************    COMPILERS LABRORATORY   ********************************************
	***************************************         ASSIGNMENT 6       ********************************************
	***************************************   HEADER FILE FOR PARSER   ********************************************
	***************************************  SUBHAM GHOSH (20CS10065)  ********************************************
	***************************************  ANUBHAV DHAR (20CS30004)  ********************************************
	***************************************************************************************************************	

*/


#ifndef ALREADY_DEFINED_TRANSLATOR_DOT_H
#define ALREADY_DEFINED_TRANSLATOR_DOT_H

// including exisiting libraries

#include <iostream>
#include <string>
#include <string.h>
#include <vector>
#include<stack>
#include <map>
#include <iomanip>

using namespace std;

// address starts from 100
#define START_ADDRESS 100

struct symbol_table;

struct symbol{
	bool is_parameter = false;
	string name;
	string type;
	int size;
	symbol_table * belonging_table;
	symbol_table * nested_table;
	string init_val;

	int offset;

	symbol(string name, string type, int size, symbol_table * belonging_table, symbol_table * nested_table = NULL, string init_val = "");
	symbol();

	// updating type
	void update(string new_type);

};

// Activation Record
struct activation_record {
	int tot_ar_offset;
	map<string, int> ar_offset;
	activation_record();
};

struct symbol_table{ // in the form of a binary search tree

	string ST_name;

	map<string, symbol> SYM;
	symbol_table * parent_table;
	activation_record * ST_ar;
	vector<string> param_list;

	symbol_table(string name, symbol_table * par = NULL);
	
	// functions as defined in the assignment problem statement
	symbol * lookup(string name);
	symbol * gentemp(string temp_type = "void");
	int update(int of = 0);
	void print();

};

struct quad{
	int addr;
	string res, a1, op, a2; // result arg1, op, arg2

	quad(int addr, string res, string a1, string op, string a2);
	void print();
};

struct quad_array_class : vector<quad *> {};
struct string_vector : vector<string> {};

struct expression{
	symbol * sym;
	vector<int> truelist, falselist, nextlist;
};

struct statement{ // statement type consisting only nextlist
	vector<int> nextlist;
};

struct array_info{
	bool is_ptr = false;
	symbol * ptr_base;
	symbol * sym;				// associated base symbol in symbol table
	symbol * offset_tempvar;	// associated offset symbol in symbol table
	vector<int> truelist, falselist, nextlist; // in case of boolean data types
	string type; 				// type of this array
};

//quadarray functions
void emit(string res, string a1, string op = "", string a2 = "");
void print_quads();

//functions for backpatch 
void backpatch(vector<int>, int);
vector<int> makelist(int);
vector<int> merge(vector<int>, vector<int>);

//other global functions
int typecheck(symbol *  E1, symbol * E2);
int typecheck(string E1_type, symbol * E2);
symbol * convert(string from, string to, symbol * E);

//helper function
int get_size(string type);
void TAC_print();

//extern definitions
extern FILE* yyin;
extern int yyparse();
extern int all_ok;
extern int yydebug;
extern int line_count;
#endif