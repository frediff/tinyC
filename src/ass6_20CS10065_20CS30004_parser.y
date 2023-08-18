/*

	***************************************************************************************************************
	****************************************   COMPILERS LABRORATORY  *********************************************
	****************************************        ASSIGNMENT 6      *********************************************
	****************************************    BISON SPECIFICATION   *********************************************
	**************************************** SUBHAM GHOSH (20CS10065) *********************************************
	**************************************** ANUBHAV DHAR (20CS30004) *********************************************
	***************************************************************************************************************	

*/
%{
    #include "ass6_20CS10065_20CS30004_translator.h"

    using namespace std;
    
    extern int line_count;
    extern int all_ok;
    extern int yylex();

    extern quad_array_class QUADARRAY;
    extern symbol_table * curr_table, * global_table;

    extern int temp_count;
    extern int table_count;
    extern int nextinstr;
    extern string curr_type;
    extern symbol * curr_sym;

    extern vector<string> string_constants;
    
    void yyerror(string s);

%}

%union{
    char * str_attr;
    int int_attr;
    struct expression * expr;
    struct statement* stmt;
    struct symbol * sym_ptr;
    struct array_info * arr;
    struct string_vector * str_vec;
}

%token<sym_ptr> IDENTIFIER
%token<str_attr> INTEGER_CONSTANT
%token<str_attr> FLOATING_CONSTANT
%token<str_attr> CHARACTER_CONSTANT
%token<str_attr> STRING_LITERAL

%token AUTO
%token STATIC
%token ENUM
%token RESTRICT
%token UNSIGNED
%token BREAK
%token EXTERN
%token RETURN
%token VOID
%token CASE
%token FLOAT
%token SHORT
%token VOLATILE
%token CHAR
%token FOR
%token SIGNED
%token WHILE
%token CONST
%token GOTO
%token SIZEOF
%token BOOL
%token CONTINUE
%token IF
%token COMPLEX
%token DEFAULT
%token INLINE
%token STRUCT
%token IMAGINARY
%token DO
%token INT
%token SWITCH
%token DOUBLE
%token LONG
%token TYPEDEF
%token ELSE
%token REGISTER
%token UNION

%token LF_SQBR;
%token RT_SQBR;
%token LF_PRNTH;
%token RT_PRNTH;
%token LF_BRACE;
%token RT_BRACE;
%token DOT;
%token ARROW;
%token PLUS_PLUS;
%token MINUS_MINUS;
%token AMPRSND;
%token ASTERIX;
%token PLUS;
%token MINUS;
%token TILDE;
%token EXCLAIM;
%token SLASH;
%token PRCNT;
%token L_SHFT;
%token R_SHFT;
%token LESS_TH;
%token MORE_TH;
%token LESS_EQ;
%token MORE_EQ;
%token EQ_EQ;
%token NOT_EQ;
%token CAP;
%token PIPE;
%token AND_AND;
%token OR_OR;
%token Q_MARK;
%token COLON;
%token SEMICOLON;
%token DOT_DOT_DOT;
%token EQ;
%token TIMES_EQ;
%token SLASH_EQ;
%token PRCNT_EQ;
%token PLUS_EQ;
%token MINUS_EQ;
%token LS_EQ;
%token RS_EQ;
%token AND_EQ;
%token XOR_EQ;
%token OR_EQ;
%token COMMA;
%token HASH;

%token UNKWN;

/* expression types */
%type<expr> primary_expression
%type<expr> multiplicative_expression
%type<expr> additive_expression
%type<expr> shift_expression
%type<expr> relational_expression
%type<expr> equality_expression
%type<expr> AND_expression
%type<expr> exclusive_OR_expression
%type<expr> inclusive_OR_expression
%type<expr> logical_AND_expression
%type<expr> logical_OR_expression
%type<expr> conditional_expression
%type<expr> assignment_expression
%type<expr> expression
%type<expr> constant_expression
%type<expr> assignment_expression_opt
%type<expr> expression_opt

/* potentially demands extra variables to take care of location */
%type<arr> postfix_expression
%type<arr> unary_expression
%type<arr> cast_expression

/* holding the number of attributes */
%type<str_vec> argument_expression_list_opt
%type<str_vec> argument_expression_list

/* statememt types */
%type<stmt> statement
%type<stmt> labeled_statement
%type<stmt> compound_statement
%type<stmt> block_item_list_opt
%type<stmt> block_item_list
%type<stmt> block_item
%type<stmt> expression_statement
%type<stmt> selection_statement
%type<stmt> iteration_statement
%type<stmt> jump_statement

%type<str_attr> unary_operator
%type assignment_operator

%type<str_attr> pointer
%type<str_attr> pointer_opt

%type<sym_ptr> declarator
%type<sym_ptr> direct_declarator
%type<sym_ptr> initializer
%type<sym_ptr> init_declarator

%type<str_attr> type_specifier
%type<str_attr> type_name
%type<str_attr> specifier_qualifier_list
%type<str_attr> specifier_qualifier_list_opt
%type<str_attr> type_qualifier


%type declaration
%type init_declarator_list_opt
%type declaration_specifiers
%type declaration_specifiers_opt
%type init_declarator_list
%type storage_class_specifier
%type enum_specifier
%type identifier_opt
%type enumerator_list
%type enumerator
%type function_specifier
%type type_qualifier_list
%type type_qualifier_list_opt
%type parameter_type_list
%type parameter_list
%type parameter_declaration
%type identifier_list
%type initializer_list
%type designation_opt
%type designation
%type designator_list
%type designator
%type translation_unit
%type external_declaration
%type function_definition
%type declaration_list_opt
%type declaration_list

%type<int_attr> marker_M
%type<expr> guard_N

%right NONELSE ELSE

%start translation_unit

%%

/* MARKER RULL AND FALL-THROUGH GUARD RULE, AS DISCUSSED IN THEORY CLASS*/

marker_M:
            {$$ = nextinstr; /*used for backpatching*/ }
        ;

guard_N:
            {
                $$ = new expression;
                $$ -> nextlist = makelist(nextinstr);
                emit("???", "", "goto");
            }
       ;


/* ENTER FUNCTION AND ENTER BLOCK STATEMENTS */
// augmentation beforing entering the function
enter_func:
              {
                  if(curr_sym -> nested_table){
                      curr_table = curr_sym -> nested_table;
                  }else{
                      curr_table = new symbol_table("", curr_table);
                  }
              }
          ;

// creates the label only for definition and not for declarations
create_label:
                { emit(curr_sym -> nested_table -> ST_name.substr(3), "", "label");}
            ;
//augmentation before entering a block
enter_block:
              {
                  string new_st_name = curr_table -> ST_name + "_b" + to_string(table_count);
                  symbol * new_block_id = curr_sym = curr_table -> lookup(new_st_name);
                  curr_table = new_block_id -> nested_table = new symbol_table(new_st_name, curr_table);
                  emit(curr_table -> ST_name.substr(3), "", "label_block");
              }
           ;

// //insert return 
// insert_return:
//                 { cerr << curr_sym -> name << '\n';emit(curr_sym -> nested_table -> ST_name.substr(3), "", "lebal");}
//               ;


/* EXPRESSIONS: */

primary_expression: IDENTIFIER
                      {
                          $$ = new expression;
                          $$ -> sym = $1;
                      }
                  | INTEGER_CONSTANT
                      {
                          $$ = new expression;
                          $$ -> sym = curr_table -> gentemp("int");
                          $$ -> sym -> init_val = $1;
                          emit($$ -> sym -> name, $1);
                      }
                  | FLOATING_CONSTANT
                      {
                          $$ = new expression;
                          $$ -> sym = curr_table -> gentemp("float");
                          $$ -> sym -> init_val = $1;
                          emit($$ -> sym -> name, $1);
                      }
                  | CHARACTER_CONSTANT
                      {
                          $$ = new expression;
                          $$ -> sym = curr_table -> gentemp("char");
                          $$ -> sym -> init_val = $1;
                          emit($$ -> sym -> name, $1);
                      }
                  | STRING_LITERAL
                      {
                          $$ = new expression;
                          $$ -> sym = curr_table -> gentemp("char*");
                          $$ -> sym -> init_val = $1;
                          emit($$ -> sym -> name, to_string(string_constants.size()), "=str");
                          string_constants.push_back($1);
                      }
                  | LF_PRNTH expression RT_PRNTH
                      { $$ = $2;}
                  ;

postfix_expression: primary_expression
                      {
                          $$ = new array_info;
                          $$ -> sym = $$ -> ptr_base = $1 -> sym;
                          $$ -> type = $1 -> sym ? $1 -> sym -> type : "int"; // we keep implicit bool type objects as int
                          $$ -> truelist = $1 -> truelist;
                          $$ -> nextlist = $1 -> nextlist;
                          $$ -> falselist = $1 -> falselist;
                      }
                  | postfix_expression LF_SQBR expression RT_SQBR
                      {
                          $$ = new array_info;
                          $$ -> sym = $$ -> ptr_base = $1 -> sym;
                          if($1 -> type[0] != 'a'){
                              yyerror("cannot perform operation of the type non_array[expr]\n");
                          }

                          int commaindex = 6;
                          while($1 -> type[commaindex++] != ',');
                          int sz = get_size($$ -> type = $1 -> type.substr(commaindex + 1, ($1 -> type.size() - 1 - 1) - (commaindex + 1) + 1));
                          $$ -> offset_tempvar = curr_table -> gentemp("int");
                          if($1 -> type != $$ -> sym -> type){ // not the first dimension
                              symbol * t = curr_table -> gentemp("int");
                              emit(t -> name, $3 -> sym -> name, "*", to_string(sz)); // size = previous_size * dimension
                              emit($$ -> offset_tempvar -> name, $1 -> offset_tempvar -> name, "+", t -> name);
                          }else{ // the first dimension
                              emit($$ -> offset_tempvar -> name, $3 -> sym -> name, "*", to_string(sz));
                          }                          

                          /*
                          $$ = new array_info;
                          $$ -> sym = $1 -> sym;
                          $$ -> type = "array(" + $3 -> sym -> init_val + ", " + $1 -> type + ")";
                          $$ -> offset_tempvar = curr_table -> gentemp("int");
                          if($1 -> type[0] == 'a'){ // multiple dimensional array
                              symbol * t = curr_table -> gentemp("int");
                              emit(t -> name, $3 -> sym -> name, "*", to_string(get_size($1 -> type))); // size = previous_size * dimension
                              emit($$ -> offset_tempvar -> name, $$ -> offset_tempvar -> name, "+", to_string(get_size($1 -> type)));
                          }else{ // the first dimension
                              emit($$ -> offset_tempvar -> name, $3 -> sym -> name, "*", to_string(get_size($1 -> type)));
                          }
                          */
                      }
                  | postfix_expression LF_PRNTH argument_expression_list_opt RT_PRNTH  
                      {
                          $$ = new array_info;
                          $$ -> sym =  $$ -> ptr_base = curr_table -> gentemp($1 -> sym -> type);
                          $$ -> type = $1 -> type;
                          for(string par : *($3)){
                              emit("", par, "param");
                          }
                          emit($$ -> sym -> type == "void" ? "" : $$ -> sym -> name, $1 -> sym -> name, "call", to_string($3 -> size()));
                      }
                  | postfix_expression DOT IDENTIFIER   {}  // structred component expressions are not expected to be handled
                  | postfix_expression ARROW IDENTIFIER {}  // structred component expressions are not expected to be handled
                  | postfix_expression PLUS_PLUS
                      {
                          $$ = new array_info;
                          // postfix increment, we need a temporary variable to remember pre-increment value
                          $$ -> sym =  $$ -> ptr_base = curr_table -> gentemp($1 -> sym -> type);
                          $$ -> type = $$ -> sym -> type;
                          emit($$ -> sym -> name, $1 -> sym -> name);

                          //increment the original number
                          emit($1 -> sym -> name, $1 -> sym -> name, "+", "1");
                      }
                  | postfix_expression MINUS_MINUS
                      {   
                          $$ = new array_info;
                          // postfix decrement, we need a temporary variable to remember pre-decrement value
                          $$ -> sym =  $$ -> ptr_base = curr_table -> gentemp($1 -> sym -> type);
                          emit($$ -> sym -> name, $1 -> sym -> name);

                          //decrement the original number
                          emit($1 -> sym -> name, $1 -> sym -> name, "-", "1");
                      }
                  | LF_PRNTH type_name RT_PRNTH LF_BRACE initializer_list RT_BRACE        {} // initializer lists are not expected to be handled
                  | LF_PRNTH type_name RT_PRNTH LF_BRACE initializer_list COMMA RT_BRACE  {} // initializer lists are not expected to be handled
                  ;

argument_expression_list_opt: argument_expression_list
                            | 
                                { $$ = new string_vector; /* no parameters*/}
                            ;

argument_expression_list: assignment_expression
                            {
                                $$ = new string_vector;
                                $$ -> push_back($1 -> sym -> name);
                            }
                        | argument_expression_list COMMA assignment_expression
                            {
                                $$ -> push_back($3 -> sym -> name);
                            }
                        ;

unary_expression: postfix_expression
                | PLUS_PLUS unary_expression
                    {   
                        $$ = $2;
                        // prefix increment, no such temporary variable needed
                        //increment the original number
                        emit($2 -> sym -> name, $2 -> sym -> name, "+", "1");
                    }
                | MINUS_MINUS unary_expression
                    {   
                        $$ = $2;
                        // prefix decrement, no such temporary variable needed
                        //decrement the original number
                        emit($2 -> sym -> name, $2 -> sym -> name, "-", "1");
                    }
                | unary_operator cast_expression
                    {
                          switch($1[0]){
                              case '+':
                                        $$ = $2;
                                        break;
                              case '*':
                                        $$ = new array_info;
                                        $$ -> type = $2 -> type;
                                        $$ -> is_ptr = true;
                                        $$ -> ptr_base = $2 -> sym;
                                        if($2 -> type.back() != '*'){
                                            yyerror("attempt to dereference a non_pointer");
                                        }
                                        $$ -> type.pop_back(); // removing one level of "pointer-ness"
                                        $$ -> sym = curr_table -> gentemp($$ -> type);
                                        emit($$ -> sym -> name,  $2 -> sym -> name, "=*");
                                        break;
                              case '&':
                                        $$ = new array_info;
                                        $$ -> type = $2 -> type + "*";
                                        $$ -> sym = $$ -> ptr_base = curr_table -> gentemp($$ -> type);
                                        emit($$ -> sym -> name, $2 -> sym -> name, "=&");
                                        break;
                              default:
                                        $$ = new array_info;
                                        $$ -> sym = $$ -> ptr_base = curr_table -> gentemp($2 -> type);
                                        emit($$ -> sym -> name, $2 -> sym -> name, $1);
                                        break;
                          }
                    }
                | SIZEOF unary_expression             {} // sizeof expressions not expected to be handled
                | SIZEOF LF_PRNTH type_name RT_PRNTH  {} // sizeof expressions not expected to be handled
                ;

unary_operator: AMPRSND
                  { $$ = strdup("&"); }
              | ASTERIX
                  { $$ = strdup("*"); }
              | PLUS
                  { $$ = strdup("+"); }
              | MINUS
                  { $$ = strdup("-"); }
              | TILDE
                  { $$ = strdup("~"); }
              | EXCLAIM
                  { $$ = strdup("!"); }
              ;

cast_expression: unary_expression
               | LF_PRNTH type_name RT_PRNTH cast_expression
                    {   
                        $$ = new array_info;
                        if(!typecheck($2, $4 -> sym)){
                            yyerror("type mismatch (cast_expression) " + string($2) + " and " + $4 -> sym -> type);
                        }
                        $$ -> sym = convert($4 -> sym -> type, $2, $4 -> sym);
                    }
               ;

multiplicative_expression: cast_expression
                              {
                                  $$ = new expression;
                                  if($1 -> sym && $1 -> sym -> type[0] == 'a'){
                                      $$ -> sym = curr_table -> gentemp($1 -> type);
                                      emit($$ -> sym -> name, $1 -> sym -> name, "=[]", $1 -> offset_tempvar -> name);
                                  }else{
                                      $$ -> sym = $1 -> sym;
                                  }
                                  $$ -> truelist = $1 -> truelist;
                                  $$ -> nextlist = $1 -> nextlist;
                                  $$ -> falselist = $1 -> falselist;
                              }
                         | multiplicative_expression ASTERIX cast_expression
                              {
                                  $$ = new expression;
                                  symbol * t, * t2;
                                  if($3 -> sym -> type[0] == 'a'){
                                      t = curr_table -> gentemp($3 -> type);
                                      emit(t -> name, $3 -> sym -> name, "=[]", $3 -> offset_tempvar -> name);
                                  }else{
                                      t = $3 -> sym;
                                  }
                                  if(!typecheck($1 -> sym, t)){
                                      yyerror("type mismatch (expression) : " + $1 -> sym -> type + " and " + t -> type);
                                  }

                                  if(t -> size > $1 -> sym -> size){
                                      t2 = convert($1 -> sym -> type, t -> type, $1 -> sym);
                                      $$ -> sym = curr_table -> gentemp(t2 -> type);
                                      emit($$ -> sym -> name, t2 -> name, "*", t -> name);
                                  }else{
                                      t2 = convert(t -> type, $1 -> sym -> type, t);
                                      $$ -> sym = curr_table -> gentemp(t2 -> type);
                                      emit($$ -> sym -> name, $1 -> sym -> name, "*", t2 -> name);
                                  }

                              }
                         | multiplicative_expression SLASH cast_expression
                              {
                                  $$ = new expression;
                                  symbol * t, * t2;
                                  if($3 -> sym -> type[0] == 'a'){
                                      t = curr_table -> gentemp($3 -> type);
                                      emit(t -> name, $3 -> sym -> name, "=[]", $3 -> offset_tempvar -> name);
                                  }else{
                                      t = $3 -> sym;
                                  }
                                  if(!typecheck($1 -> sym, t)){
                                      yyerror("type mismatch (expression) : " + $1 -> sym -> type + " and " + t -> type);
                                  }

                                  if(t -> size > $1 -> sym -> size){
                                      t2 = convert($1 -> sym -> type, t -> type, $1 -> sym);
                                      $$ -> sym = curr_table -> gentemp(t2 -> type);
                                      emit($$ -> sym -> name, t2 -> name, "/", t -> name);
                                  }else{
                                      t2 = convert(t -> type, $1 -> sym -> type, t);
                                      $$ -> sym = curr_table -> gentemp(t2 -> type);
                                      emit($$ -> sym -> name, $1 -> sym -> name, "/", t2 -> name);
                                  }
                                  
                              }
                         | multiplicative_expression PRCNT cast_expression
                              {
                                  $$ = new expression;
                                  symbol * t, * t2;
                                  if($3 -> sym -> type[0] == 'a'){
                                      t = curr_table -> gentemp($3 -> type);
                                      emit(t -> name, $3 -> sym -> name, "=[]", $3 -> offset_tempvar -> name);
                                  }else{
                                      t = $3 -> sym;
                                  }
                                  if(!typecheck($1 -> sym, t)){
                                      yyerror("type mismatch (relational_expression) :  , $1 -> sym -> type + (expression) : " + $1 -> sym -> type + " and " + t -> type);
                                  }

                                  if(t -> size > $1 -> sym -> size){
                                      t2 = convert($1 -> sym -> type, t -> type, $1 -> sym);
                                      $$ -> sym = curr_table -> gentemp(t2 -> type);
                                      emit($$ -> sym -> name, t2 -> name, "%", t -> name);
                                  }else{
                                      t2 = convert(t -> type, $1 -> sym -> type, t);
                                      $$ -> sym = curr_table -> gentemp(t2 -> type);
                                      emit($$ -> sym -> name, $1 -> sym -> name, "%", t2 -> name);
                                  }
                                  
                              }
                         ;

additive_expression: multiplicative_expression                              
                   | additive_expression PLUS multiplicative_expression
                      {
                          $$ = new expression;
                          symbol * t2;

                          if($3 -> sym -> size > $1 -> sym -> size){
                              t2 = convert($1 -> sym -> type, $3 -> sym -> type, $1 -> sym);
                              $$ -> sym = curr_table -> gentemp(t2 -> type);
                              emit($$ -> sym -> name, t2 -> name, "+", $3 -> sym -> name);
                          }else{
                              t2 = convert($3 -> sym -> type, $1 -> sym -> type, $3 -> sym);
                              $$ -> sym = curr_table -> gentemp(t2 -> type);
                              emit($$ -> sym -> name, $1 -> sym -> name, "+", t2 -> name);
                          }
                          
                      }
                   | additive_expression MINUS multiplicative_expression
                      {
                          $$ = new expression;
                          symbol * t2;

                          if($3 -> sym -> size > $1 -> sym -> size){
                              t2 = convert($1 -> sym -> type, $3 -> sym -> type, $1 -> sym);
                              $$ -> sym = curr_table -> gentemp(t2 -> type);
                              emit($$ -> sym -> name, t2 -> name, "-", $3 -> sym -> name);
                          }else{
                              t2 = convert($3 -> sym -> type, $1 -> sym -> type, $3 -> sym);
                              $$ -> sym = curr_table -> gentemp(t2 -> type);
                              emit($$ -> sym -> name, $1 -> sym -> name, "-", t2 -> name);
                          }
                          
                      }
                   ;

shift_expression: additive_expression
                | shift_expression L_SHFT additive_expression
                      {
                          $$ = new expression;
                          $$ -> sym = curr_table -> gentemp($1 -> sym -> type);
                          emit($$ -> sym -> name, $1 -> sym -> name, "<<", $3 -> sym -> name);
                      }
                | shift_expression R_SHFT additive_expression
                      {
                          $$ = new expression;
                          $$ -> sym = curr_table -> gentemp($1 -> sym -> type);
                          emit($$ -> sym -> name, $1 -> sym -> name, ">>", $3 -> sym -> name);
                      }
                ;

relational_expression: shift_expression
                     | relational_expression LESS_TH shift_expression
                          {
                              if(!typecheck($1 -> sym, $3 -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + $1 -> sym -> type + " and " + $3 -> sym -> type);
                              }
                              $$ = new expression;

                              $$ -> truelist = makelist(nextinstr);
                              emit("???", $1 -> sym -> name, "<", $3 -> sym -> name);
                              
                              $$ -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
                     | relational_expression MORE_TH shift_expression
                          {
                              if(!typecheck($1 -> sym, $3 -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + $1 -> sym -> type + " and " + $3 -> sym -> type);
                              }
                              $$ = new expression;

                              $$ -> truelist = makelist(nextinstr);
                              emit("???", $1 -> sym -> name, ">", $3 -> sym -> name);
                              
                              $$ -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
                     | relational_expression LESS_EQ shift_expression
                          {
                              if(!typecheck($1 -> sym, $3 -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + $1 -> sym -> type + " and " + $3 -> sym -> type);
                              }
                              $$ = new expression;

                              $$ -> truelist = makelist(nextinstr);
                              emit("???", $1 -> sym -> name, "<=", $3 -> sym -> name);
                              
                              $$ -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
                     | relational_expression MORE_EQ shift_expression
                          {
                              if(!typecheck($1 -> sym, $3 -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + $1 -> sym -> type + " and " + $3 -> sym -> type);
                              }
                              $$ = new expression;

                              $$ -> truelist = makelist(nextinstr);
                              emit("???", $1 -> sym -> name, ">=", $3 -> sym -> name);
                              
                              $$ -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
                     ;

equality_expression: relational_expression
                   | equality_expression EQ_EQ relational_expression
                        {
                            if(!typecheck($1 -> sym, $3 -> sym)){
                                  yyerror("type mismatch (equality_expression) : " + $1 -> sym -> type + " and " + $3 -> sym -> type);
                            }
                            $$ = new expression;

                            $$ -> truelist = makelist(nextinstr);
                            emit("???", $1 -> sym -> name, "==", $3 -> sym -> name);
                            
                            $$ -> falselist = makelist(nextinstr);
                            emit("???", "", "goto");
                        }
                   | equality_expression NOT_EQ relational_expression
                        {
                            if(!typecheck($1 -> sym, $3 -> sym)){
                                  yyerror("type mismatch (equality_expression) : " + $1 -> sym -> type + " and " + $3 -> sym -> type);
                            }
                            $$ = new expression;

                            $$ -> truelist = makelist(nextinstr);
                            emit("???", $1 -> sym -> name, "!=", $3 -> sym -> name);
                            
                            $$ -> falselist = makelist(nextinstr);
                            emit("???", "", "goto");
                        }
                   ;

AND_expression: equality_expression
              | AND_expression AMPRSND equality_expression
                  {
                      $$ = new expression;
                      symbol * a1 = convert($1 -> sym -> type, "int", $1 -> sym);
                      symbol * a3 = convert($3 -> sym -> type, "int", $3 -> sym);
                      $$ -> sym = curr_table -> gentemp("int");
                      emit($$ -> sym -> name, a1 -> name, "&", a3 -> name);
                  }
              ;

exclusive_OR_expression: AND_expression
                       | exclusive_OR_expression CAP AND_expression
                          {
                              $$ = new expression;
                              symbol * a1 = convert($1 -> sym -> type, "int", $1 -> sym);
                              symbol * a3 = convert($3 -> sym -> type, "int", $3 -> sym);
                              $$ -> sym = curr_table -> gentemp("int");
                              emit($$ -> sym -> name, a1 -> name, "^", a3 -> name);
                          }
                       ;

inclusive_OR_expression: exclusive_OR_expression
                       | inclusive_OR_expression PIPE exclusive_OR_expression
                          {
                              $$ = new expression;
                              symbol * a1 = convert($1 -> sym -> type, "int", $1 -> sym);
                              symbol * a3 = convert($3 -> sym -> type, "int", $3 -> sym);
                              $$ -> sym = curr_table -> gentemp("int");
                              emit($$ -> sym -> name, a1 -> name, "|", a3 -> name);
                          }
                       ;

logical_AND_expression: inclusive_OR_expression
                      | logical_AND_expression AND_AND marker_M inclusive_OR_expression
                          {
                              $$ = new expression;
                              backpatch($1 -> truelist, $3);
                              $$ -> truelist = $4 -> truelist;
                              $$ -> falselist = merge($1 -> falselist, $4 -> falselist);
                          }
                      ;

logical_OR_expression: logical_AND_expression
                     | logical_OR_expression OR_OR marker_M logical_AND_expression
                          {
                              $$ = new expression;
                              backpatch($1 -> falselist, $3);
                              $$ -> falselist = $4 -> falselist;
                              $$ -> truelist = merge($1 -> truelist, $4 -> truelist);
                          }
                     ;

conditional_expression: logical_OR_expression
                      | logical_OR_expression guard_N Q_MARK marker_M expression guard_N COLON marker_M conditional_expression
                          {
                              $$ = new expression;
                              $$ -> sym = curr_table -> gentemp($5 -> sym -> type);
                              emit($$ -> sym -> name, $9 -> sym -> name);
                              vector<int> I = makelist(nextinstr);
                              emit("???", "", "goto");
                              backpatch($6 -> nextlist, nextinstr);

                              emit($$ -> sym -> name, $5 -> sym -> name);
                              I = merge(I, makelist(nextinstr));
                              emit("???", "", "goto");
                              backpatch($2 -> nextlist, nextinstr);

                              backpatch($1 -> truelist, $4);
                              backpatch($1 -> falselist, $8);


                              backpatch(I, nextinstr);
                          }
                      ;

assignment_expression: conditional_expression
                     | unary_expression assignment_operator assignment_expression
                          {
                              $$ = $3;
                              // cerr << "\n\n\n\n **************************************************************** " << $3 -> sym -> name << " of " << $3 -> sym -> belonging_table -> ST_name << " to " << $1 -> sym -> name << " of table " << $1 -> sym -> belonging_table -> ST_name << "********\n\n";  
                              // cerr << "\n\n\n\n **************************************************************** " << $3 -> sym -> type << " to " << $1 -> sym -> type << " ********\n\n";  
                              if($1 -> sym -> type[0] == 'a'){
                                  typecheck($1 -> sym, $3 -> sym);
                                  symbol * t = convert($3 -> sym -> type, $1 -> type, $3 -> sym);
                                  emit($1 -> sym -> name, $1 -> offset_tempvar -> name, "[]=", $3 -> sym -> name);
                                  $$ -> sym = t;
                              }else if($1 -> is_ptr){
                                  emit($1 -> ptr_base -> name, $3 -> sym -> name, "*=");
                              }else if(typecheck($1 -> sym, $3 -> sym)){
                                  if(!typecheck($1 -> sym, $3 -> sym)){
                                      yyerror("type mismatch (assignment_expression)");
                                  }
                                  symbol * t = convert($3 -> sym -> type, $1 -> sym -> type, $3 -> sym);
                                  emit($1 -> sym -> name, t -> name);
                                  $$ -> sym = t;
                              }else{
                                  yyerror("type mismatch(Assignment)");
                              }
                          }
                     ;

assignment_operator: EQ
                   | TIMES_EQ
                   | SLASH_EQ
                   | PRCNT_EQ
                   | PLUS_EQ
                   | MINUS_EQ
                   | LS_EQ
                   | RS_EQ
                   | AND_EQ
                   | XOR_EQ
                   | OR_EQ
                   ;

expression: assignment_expression
          | expression COMMA assignment_expression {} // not handled
          ;

constant_expression: conditional_expression

/* DECLARATIONS */
                   ;

declaration: declaration_specifiers init_declarator_list_opt SEMICOLON
           ;

init_declarator_list_opt: init_declarator_list
                        | 
                        ;

declaration_specifiers: storage_class_specifier declaration_specifiers_opt
                      | type_specifier declaration_specifiers_opt
                      | type_qualifier declaration_specifiers_opt
                      | function_specifier declaration_specifiers_opt
                      ;

declaration_specifiers_opt: declaration_specifiers
                          | 
                          ;

init_declarator_list: init_declarator
                    | init_declarator_list COMMA init_declarator
                    ;

init_declarator: declarator
               | declarator EQ initializer
                    {
                        $$ = $1;
                        if($3 -> init_val != ""){
                            // cerr << "\n\n\n\n\n\n ************************ HERE WE HAVE " << $1 << ", " << $3 << " ******\n\n\n";
                            // cerr << "\n\n\n\n\n\n ************************ WITH " << $1 -> name << ", " ;
                            // cerr << $3 -> name << " ******\n\n\n";
                            $1 -> init_val = $3 -> init_val;
                            emit($1 -> name, $3 -> name);
                        }else{
                            if(!typecheck($1, $3)){
                                yyerror("type mismatch (" + $1 -> type + ", " + $3 -> type + ")");
                            }
                            symbol * t = convert($3 -> type, $1 -> type, $3); 
                            emit($1 -> name, t -> name);
                        }
                    }
               ;

storage_class_specifier: EXTERN
                       | STATIC
                       | AUTO
                       | REGISTER
                       ;

type_specifier: VOID
                  { $$ = strdup("void"); curr_type = "void";}
              | CHAR
                  { $$ = strdup("char"); curr_type = "char";}
              | SHORT
                  { $$ = strdup(""); curr_type = "void";}
              | INT
                  { $$ = strdup("int"); curr_type = "int";}
              | LONG
                  { $$ = strdup(""); curr_type = "void";}
              | FLOAT
                  { $$ = strdup("float"); curr_type = "float";}
              | DOUBLE
                  { $$ = strdup(""); curr_type = "void";}
              | SIGNED
                  { $$ = strdup(""); curr_type = "void";}
              | UNSIGNED
                  { $$ = strdup(""); curr_type = "void";}
              | BOOL
                  { $$ = strdup(""); curr_type = "void";}
              | COMPLEX
                  { $$ = strdup(""); curr_type = "void";}
              | IMAGINARY
                  { $$ = strdup(""); curr_type = "void";}
              | enum_specifier
                  { $$ = strdup(""); curr_type = "void";}
              ;

specifier_qualifier_list: type_specifier specifier_qualifier_list_opt
                        | type_qualifier specifier_qualifier_list_opt
                        ;

specifier_qualifier_list_opt: specifier_qualifier_list
                            |
                                {
                                    $$ = strdup("");
                                }
                            ;

enum_specifier: ENUM identifier_opt LF_BRACE enumerator_list RT_BRACE
              | ENUM identifier_opt LF_BRACE enumerator_list COMMA RT_BRACE
              | ENUM IDENTIFIER
              ;

identifier_opt: IDENTIFIER
              | 
              ;

enumerator_list: enumerator
               | enumerator_list COMMA enumerator
               ;

enumerator: IDENTIFIER
          | IDENTIFIER EQ constant_expression
          ;

type_qualifier: CONST
                  { $$ = strdup(""); }
              | RESTRICT
                  { $$ = strdup(""); }
              | VOLATILE
                  { $$ = strdup(""); }
              ;

function_specifier: INLINE
                  ;

declarator: pointer_opt direct_declarator
              { 
                  if(strlen($1)){
                      $2 -> update($1);
                  }
                  $$ = $2;
              }
          ;

pointer_opt: pointer
           |
              { $$ = strdup(""); } 
           ;

direct_declarator: IDENTIFIER
                      { 
                          $1 -> update(curr_type); 
                          $$ = curr_sym = $1;
                      }
                 | LF_PRNTH declarator RT_PRNTH
                      { $$ = $2;}
                 | direct_declarator LF_SQBR type_qualifier_list assignment_expression_opt RT_SQBR        {}
                 | direct_declarator LF_SQBR assignment_expression_opt RT_SQBR
                      {
                          string u = $1 -> type, v = "";
                          for(char c : u){
                              if(c == 'i' || c == 'v' || c == 'f' || c == 'c'){
                                  v = v + "array(" + $3 -> sym -> init_val + ", ";
                              }
                              v.push_back(c);
                          }
                          v.push_back(')');
                          $1 -> update(v);
                          $$ = curr_sym = $1;
                      }
                 | direct_declarator LF_SQBR STATIC type_qualifier_list_opt assignment_expression RT_SQBR {}
                 | direct_declarator LF_SQBR type_qualifier_list STATIC assignment_expression RT_SQBR     {}
                 | direct_declarator LF_PRNTH enter_func parameter_type_list RT_PRNTH
                      {
                          curr_table -> ST_name = "ST_" + $1 -> name;
                          if($1 -> type != "void"){
                              curr_table -> lookup("_retval") -> update($1 -> type); 
                          }
                          $1 -> nested_table = curr_table;
                          curr_table -> parent_table = global_table;

                          curr_sym = $$ = $1;
                          curr_table = global_table;
                      }
                 | direct_declarator LF_PRNTH identifier_list RT_PRNTH {}
                 | direct_declarator LF_PRNTH enter_func RT_PRNTH 
                      {   
                          curr_table -> ST_name = "ST_" + $1 -> name;
                          if($1 -> type != "void"){
                              curr_table -> lookup("_retval") -> update($1 -> type); 
                          }
                          $1 -> nested_table = curr_table;
                          curr_table -> parent_table = global_table;

                          curr_sym = $$ = $1;
                          curr_table = global_table;
                      }
                 ;

type_qualifier_list_opt: type_qualifier_list
                       |
                       ;

assignment_expression_opt: assignment_expression
                         | 
                            {$$ = new expression; }
                         ;

pointer: ASTERIX type_qualifier_list_opt
            {
                curr_type.push_back('*');
                $$ = strdup(curr_type.c_str());
            }
       | ASTERIX type_qualifier_list_opt pointer
            {
                curr_type.push_back('*');
                $$ = strdup(curr_type.c_str());
            }
       ;

type_qualifier_list: type_qualifier
                   | type_qualifier_list type_qualifier
                   ;

parameter_type_list: parameter_list
                   | parameter_list COMMA DOT_DOT_DOT
                   ;

parameter_list: parameter_declaration
              | parameter_list COMMA parameter_declaration
              ;

parameter_declaration: declaration_specifiers declarator
                        {
                            $2 -> is_parameter = true;
                            curr_table -> param_list.push_back($2 -> name);
                        }
                     | declaration_specifiers
                     ;

identifier_list: IDENTIFIER
               | identifier_list COMMA IDENTIFIER
               ;

type_name: specifier_qualifier_list
         ;

initializer: assignment_expression
                { $$ = $1 -> sym;}
           | LF_BRACE initializer_list RT_BRACE {}
           | LF_BRACE initializer_list COMMA RT_BRACE {}
           ;

initializer_list: designation_opt initializer
                | initializer_list COMMA designation_opt initializer
                ;

designation_opt: designation
               | 
               ;

designation: designator_list EQ
           ;

designator_list: designator
               | designator_list designator
               ;

designator: LF_SQBR constant_expression RT_SQBR
          | DOT IDENTIFIER
          ;

/* STATEMENTS */

statement: labeled_statement
         | compound_statement
         | expression_statement
              {
                  $$ = new statement;
                  $$ -> nextlist = $1 -> nextlist;
              }
         | selection_statement
         | iteration_statement
         | jump_statement
         ;

labeled_statement: IDENTIFIER COLON statement {}
                 | CASE constant_expression COLON statement {}
                 | DEFAULT COLON statement {}
                 ;

compound_statement: LF_BRACE enter_block block_item_list_opt RT_BRACE
                      {
                          $$ = $3;
                          emit(curr_table -> ST_name.substr(2), "", "lebal_block");
                          curr_table = curr_table -> parent_table;
                      }
                  ;

block_item_list_opt: block_item_list
                   | 
                      { $$ = new statement;}
                   ;

block_item_list: block_item
               | block_item_list marker_M block_item
                    {
                        $$ = $3;
                        backpatch($1 -> nextlist, $2);
                    }
               ;

block_item: declaration
              { $$ = new statement;}
          | statement
          ;

expression_statement: expression_opt SEMICOLON
                        {
                            $$ = new statement;
                            $$ -> nextlist = $1 -> nextlist;
                        }
                    ;

expression_opt: expression
              | 
                  {$$ = new expression;}
              ;

selection_statement: IF LF_PRNTH expression RT_PRNTH marker_M statement guard_N %prec NONELSE
                        {
                            $$ = new statement;
                            backpatch($3 -> truelist, $5);
                            vector<int> I = merge($6 -> nextlist, $7 -> nextlist);
                            $$ -> nextlist = merge($3 -> falselist, I);
                        }
                   | IF LF_PRNTH expression RT_PRNTH marker_M statement guard_N ELSE marker_M statement
                        {
                            $$ = new statement;
                            backpatch($3 -> truelist, $5);
                            backpatch($3 -> falselist, $9);
                            vector<int> I = merge($6 -> nextlist, $7 -> nextlist);
                            $$ -> nextlist = merge($10 -> nextlist, I);
                        }
                   | SWITCH LF_PRNTH expression RT_PRNTH statement {} /* skipped */
                   ;

iteration_statement: WHILE marker_M LF_PRNTH expression RT_PRNTH marker_M statement
                        {
                            $$ = new statement;
                            backpatch($7 -> nextlist, $2);
                            backpatch($4 -> truelist, $6);
                            $$ -> nextlist = $4 -> falselist;
                            emit(to_string($2), "", "goto");
                        }
                   | DO marker_M statement marker_M WHILE LF_PRNTH expression RT_PRNTH SEMICOLON
                        {
                            $$ = new statement;
                            backpatch($7 -> truelist, $2);
                            backpatch($3 -> nextlist, $4);
                            $$ -> nextlist = $7 -> falselist;
                        }
                   | FOR LF_PRNTH expression_opt SEMICOLON marker_M expression_opt SEMICOLON marker_M expression_opt guard_N RT_PRNTH marker_M statement
                        {
                            $$ = new statement;
                            backpatch($6 -> truelist, $12);
                            backpatch($10 -> nextlist, $5);
                            backpatch($13 -> nextlist, $8);
                            $$ -> nextlist = $6 -> falselist;
                            emit(to_string($8), "", "goto");
                        }
                   | FOR LF_PRNTH declaration expression_opt SEMICOLON expression_opt RT_PRNTH statement {} /* skipped */
                   ;

jump_statement: GOTO IDENTIFIER SEMICOLON {}
              | CONTINUE SEMICOLON {}
              | BREAK SEMICOLON {}
              | RETURN expression SEMICOLON
                  {
                      $$ = new statement;
                      // emit("_retval", $2 -> sym -> name);
                      // emit("", "_retval", "return");
                      emit("", $2 -> sym -> name, "return");
                  }
              | RETURN SEMICOLON
                  {
                      $$ = new statement;
                      emit("", "", "return");
                  }
              ;

/* EXTERNAL DEFINITIONS */

translation_unit: external_declaration
                | translation_unit external_declaration
                ;

external_declaration: function_definition
                    | declaration
                    ;

function_definition: declaration_specifiers declarator declaration_list_opt enter_func create_label LF_BRACE block_item_list_opt RT_BRACE
                        { 
                            emit($2 -> name, "", "lebal");
                            curr_table = global_table;
                            backpatch($7 -> nextlist, nextinstr);
                        }
                   ;

declaration_list_opt: declaration_list
                    | 
                    ;

declaration_list: declaration
                | declaration_list declaration
                ;

%%

void yyerror(string s){
    printf("#\n\t--------------------------------------------------------------------------------------\n");
    printf("#\t                                %s on line %d\n", s.c_str(), line_count);
    printf("#\t--------------------------------------------------------------------------------------\n\n");
    cerr << "\n\n ----------------------- SYNTAX ERROR FOUND ON LINE " << line_count << ", GENERATION OF THREE ADDRESS CODE INCOMPLETE ----------------------- \n\n";
    exit(1);
    all_ok = 0;
}
