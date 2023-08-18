# tinyC Compiler Design - Project Description

### The repository for the project is available at https://github.com/frediff/HMS

## tinyC 

This is a compiler supporting a subset of the C language specification from the International Standard ISO/IEC 9899:1999 (E)

#### The Lexical Rules

> `dot 					"."
> digit 					[0-9]
> non_zero_digit 			[1-9]
> non_digit 				[a-zA-Z_]
> digit_sequence 			{digit}+
> sign 					"+"|"-"
> exponent_part 			("e"|"E"){sign}?{digit_sequence}
> fractional_constant 	({digit_sequence}?{dot}{digit_sequence})|({digit_sequence}{dot})
> escape_sequence 		"\\\'"|"\\\""|"\\?"|"\\\\"|"\\a"|"\\b"|"\\f"|"\\n"|"\\r"|"\\t"|"\\v"
> c_char 					[^\'\\\n]|{escape_sequence}
> c_char_sequence 		{c_char}+
> s_char 					[^\"\\\n]|{escape_sequence}
> s_char_sequence 		{s_char}+
> identifier 				{non_digit}({digit}|{non_digit})*
> integer_constant 		{non_zero_digit}{digit}*|"0"
> floating_constant 		({fractional_constant}{exponent_part}?)|({digit_sequence}{exponent_part})
> character_constant		\'{c_char_sequence}\'
> string_literal 			\"{s_char_sequence}?\"
> whitespace				[ \t]
> newline					[\n]`

> `"auto"                          	AUTO`
> `"enum"                          	ENUM`
> `"restrict"                      	RESTRICT`
> `"unsigned"                      	UNSIGNED`
> `"break"                         	BREAK`
> `"extern"                        	EXTERN`
> `"return"                        	RETURN`
> `"void"                          	VOID`
> `"case"                          	CASE`
> `"float"                         	FLOAT`
> `"short"                         	SHORT`
> `"volatile"                      	VOLATILE`
> `"char"                          	CHAR`
> `"for"                           	FOR`
> `"signed"                        	SIGNED`
> `"while"                     	    WHILE`
> `"const"                         	CONST`
> `"goto"                          	GOTO`
> `"sizeof"                        	SIZEOF`
> `"_Bool"                         	BOOL
> "continue"                      	CONTINUE
> "if"                            	IF
> "static"                        	STATIC
> "_Complex"                      	COMPLEX`
> `"default"                       	DEFAULT`
> `"inline"                        	INLINE`
> `"struct"                        	STRUCT`
> `"_Imaginary"                    	IMAGINARY`
> `"do"                            	DO`
> `"int"                           	INT`
> `"switch"                        	SWITCH`
> `"double"                        	DOUBLE`
> `"long"                      	    LONG`
> `"typedef"                   	    TYPEDEF`
> `"else"                      	    ELSE`
> `"register"                  	   	REGISTER`
> `"union"                        		UNION`
> `{identifier}						IDENTIFIER`
> `{integer_constant}					INTEGER_CONSTANT`
> `{floating_constant}					FLOATING_CONSTANT`
> `{character_constant}				CHARACTER_CONSTANT`
> `{string_literal}					STRING_LITERAL`
> `"[" 								LF_SQBR`
> `"]" 								RT_SQBR`
> `"(" 								LF_PRNTH`
> `")" 								RT_PRNTH`
> `"{" 								LF_BRACE`
> `"}" 								RT_BRACE`
> `"." 								DOT`
> `"->" 								ARROW`
> `"++" 								PLUS_PLUS`
> `"--" 								MINUS_MINUS`
> `"&" 								AMPRSND`
> `"*" 								ASTERIX
> "+" 								PLUS
> "-" 								MINUS
> "~" 								TILDE
> "!" 								EXCLAIM
> "/" 								SLASH
> "%" 								PRCNT
> "<<" 								L_SHFT
> ">>" 								R_SHFT
> "<" 								LESS_TH
> ">" 								MORE_TH
> "<=" 								LESS_EQ
> ">=" 								MORE_EQ
> "==" 								EQ_EQ
> "!=" 								NOT_EQ
> "^" 								CAP
> "|" 								PIPE
> "&&" 								AND_AND
> "||" 								OR_OR
> "?" 								Q_MARK
> ":" 								COLON
> ";" 								SEMICOLON
> "..." 								DOT_DOT_DOT
> "=" 								EQ
> "*=" 								TIMES_EQ`
> `"/=" 								SLASH_EQ`
> `"%=" 								PRCNT_EQ`
> `"+=" 								PLUS_EQ`
> `"-=" 								MINUS_EQ`
> `"<<=" 								LS_EQ`
> `">>=" 								RS_EQ`
> `"&=" 								AND_EQ`
> `"^=" 								XOR_EQ`
> `"|=" 								OR_EQ`
> `"," 								COMMA`
> `"#" 								HASH`

#### The Phase Structure Grammar

- ##### EXPRESSIONS

> `primary_expression: IDENTIFIER`
>                   `| INTEGER_CONSTANT`
>                   `| FLOATING_CONSTANT`
>                   `| CHARACTER_CONSTANT`
>                   `| STRING_LITERAL`
>                   `| LF_PRNTH expression RT_PRNTH`
>                   `;`
>
> `postfix_expression: primary_expression`
>                   `| postfix_expression LF_SQBR expression RT_SQBR`
>                   `| postfix_expression LF_PRNTH argument_expression_list_opt RT_PRNTH`
>                   `| postfix_expression DOT IDENTIFIER`
>                   `| postfix_expression ARROW IDENTIFIER`
>                   `| postfix_expression PLUS_PLUS`
>                   `| postfix_expression MINUS_MINUS`
>                   `| LF_PRNTH type_name RT_PRNTH LF_BRACE initializer_list RT_BRACE`
>                   `| LF_PRNTH type_name RT_PRNTH LF_BRACE initializer_list COMMA RT_BRACE`
>                   `;`
>
> `argument_expression_list_opt: argument_expression_list`
>                             `|` 
>                             `;`
>
> `argument_expression_list: assignment_expression`
>                         `| argument_expression_list COMMA assignment_expression`
>                         `;`
>
> `unary_expression: postfix_expression`
>                 `| PLUS_PLUS unary_expression`
>                 `| MINUS_MINUS unary_expression`
>                 `| unary_operator cast_expression`
>                 `| SIZEOF unary_expression`
>                 `| SIZEOF LF_PRNTH type_name RT_PRNTH`
>                 `;`
>
> `unary_operator: AMPRSND`
>               `| ASTERIX`
>               `| PLUS`
>               `| MINUS`
>               `| TILDE`
>               `| EXCLAIM`
>               `;`
>
> `cast_expression: unary_expression`
>                `| LF_PRNTH type_name RT_PRNTH cast_expression`
>                `;`
>
> `multiplicative_expression: cast_expression`
>                          `| multiplicative_expression ASTERIX cast_expression`
>                          `| multiplicative_expression SLASH cast_expression`
>                          `| multiplicative_expression PRCNT cast_expression`
>                          `;`
>
> `additive_expression: multiplicative_expression`
>                    `| additive_expression PLUS multiplicative_expression`
>                    `| additive_expression MINUS multiplicative_expression`
>                    `;`
>
> `shift_expression: additive_expression`
>                 `| shift_expression L_SHFT additive_expression`
>                 `| shift_expression R_SHFT additive_expression`
>                 `;`
>
> `relational_expression: shift_expression`
>                      `| relational_expression LESS_TH shift_expression`
>                      `| relational_expression MORE_TH shift_expression`
>                      `| relational_expression LESS_EQ shift_expression`
>                      `| relational_expression MORE_EQ shift_expression`
>                      `;`
>
> `equality_expression: relational_expression`
>                    `| equality_expression EQ_EQ relational_expression`
>                    `| equality_expression NOT_EQ relational_expression`
>                    `;`
>
> `AND_expression: equality_expression`
>               `| AND_expression AMPRSND equality_expression`
>               `;`
>
> `exclusive_OR_expression: AND_expression`
>                        `| exclusive_OR_expression CAP AND_expression`
>                        `;`
>
> `inclusive_OR_expression: exclusive_OR_expression`
>                        `| inclusive_OR_expression PIPE exclusive_OR_expression`
>                        `;`
>
> `logical_AND_expression: inclusive_OR_expression`
>                       `| logical_AND_expression AND_AND inclusive_OR_expression`
>                       `;`
>
> `logical_OR_expression: logical_AND_expression`
>                      `| logical_OR_expression OR_OR logical_AND_expression`
>                      `;`
>
> `conditional_expression: logical_OR_expression`
>                       `| logical_OR_expression Q_MARK expression COLON conditional_expression`
>                       `;`
>
> `assignment_expression: conditional_expression`
>                      `| unary_expression assignment_operator assignment_expression`
>                      `;`
>
> `assignment_operator: EQ`
>                    `| TIMES_EQ`
>                    `| SLASH_EQ`
>                    `| PRCNT_EQ`
>                    `| PLUS_EQ`
>                    `| MINUS_EQ`
>                    `| LS_EQ`
>                    `| RS_EQ`
>                    `| AND_EQ`
>                    `| XOR_EQ`
>                    `| OR_EQ`
>                    `;`
>
> `expression: assignment_expression`
>           `| expression COMMA assignment_expression`
>           `;`
>
> `constant_expression: conditional_expression`
>                    `;`

- ##### DECLARATIONS

> `declaration: declaration_specifiers init_declarator_list_opt SEMICOLON`
>            `;`
>
> `init_declarator_list_opt: init_declarator_list`
>                         `|` 
>                         `;`
>
> `declaration_specifiers: storage_class_specifier declaration_specifiers_opt`
>                       `| type_specifier declaration_specifiers_opt`
>                       `| type_qualifier declaration_specifiers_opt`
>                       `| function_specifier declaration_specifiers_opt`
>                       `;`
>
> `declaration_specifiers_opt: declaration_specifiers`
>                           `|` 
>                           `;`
>
> `init_declarator_list: init_declarator`
>                     `| init_declarator_list COMMA init_declarator`
>                     `;`
>
> `init_declarator: declarator`
>                `| declarator EQ initializer`
>                `;`
>
> `storage_class_specifier: EXTERN`
>                        `| STATIC`
>                        `| AUTO`
>                        `| REGISTER`
>                        `;`
>
> `type_specifier: VOID`
>               `| CHAR`
>               `| SHORT`
>               `| INT`
>               `| LONG`
>               `| FLOAT`
>               `| DOUBLE`
>               `| SIGNED`
>               `| UNSIGNED`
>               `| BOOL`
>               `| COMPLEX`
>               `| IMAGINARY`
>               `| enum_specifier`
>               `;`
>
> `specifier_qualifier_list: type_specifier specifier_qualifier_list_opt`
>                         `| type_qualifier specifier_qualifier_list_opt`
>                         `;`
>
> `specifier_qualifier_list_opt: specifier_qualifier_list`
>                             `|` 
>                             `;`
>
> `enum_specifier: ENUM identifier_opt LF_BRACE enumerator_list RT_BRACE`
>               `| ENUM identifier_opt LF_BRACE enumerator_list COMMA RT_BRACE`
>               `| ENUM IDENTIFIER`
>               `;`
>
> `identifier_opt: IDENTIFIER`
>               `|` 
>               `;`
>
> `enumerator_list: enumerator`
>                `| enumerator_list COMMA enumerator`
>                `;`
>
> `enumerator: IDENTIFIER`
>           `| IDENTIFIER EQ constant_expression`
>           `;`
>
> `type_qualifier: CONST`
>               `| RESTRICT`
>               `| VOLATILE`
>               `;`
>
> `function_specifier: INLINE`
>                   `;`
>
> `declarator: pointer_opt direct_declarator`
>           `;`
>
> `pointer_opt: pointer`
>            `|` 
>            `;`
>
> `direct_declarator: IDENTIFIER`
>                  `| LF_PRNTH declarator RT_PRNTH`
>                  `| direct_declarator LF_SQBR type_qualifier_list_opt assignment_expression_opt RT_SQBR`
>                  `| direct_declarator LF_SQBR STATIC type_qualifier_list_opt assignment_expression RT_SQBR`
>                  `| direct_declarator LF_SQBR type_qualifier_list STATIC assignment_expression RT_SQBR`
>                  `| direct_declarator LF_SQBR type_qualifier_list_opt ASTERIX RT_SQBR`
>                  `| direct_declarator LF_PRNTH parameter_type_list RT_PRNTH`
>                  `| direct_declarator LF_PRNTH identifier_list_opt RT_PRNTH`
>                  `;`
>
> `type_qualifier_list_opt: type_qualifier_list`
>                        `|` 
>                        `;`
>
> `assignment_expression_opt: assignment_expression`
>                          `|` 
>                          `;`
>
> `identifier_list_opt: identifier_list`
>                    `|` 
>                    `;`
>
> `pointer: ASTERIX type_qualifier_list_opt`
>        `| ASTERIX type_qualifier_list_opt pointer`
>        `;`
>
> `type_qualifier_list: type_qualifier`
>                    `| type_qualifier_list type_qualifier`
>                    `;`
>
> `parameter_type_list: parameter_list`
>                    `| parameter_list COMMA DOT_DOT_DOT`
>                    `;`
>
> `parameter_list: parameter_declaration`
>               `| parameter_list COMMA parameter_declaration`
>               `;`
>
> `parameter_declaration: declaration_specifiers declarator`
>                      `| declaration_specifiers`
>                      `;`
>
> `identifier_list: IDENTIFIER`
>                `| identifier_list COMMA IDENTIFIER`
>                `;`
>
> `type_name: specifier_qualifier_list`
>          `;`
>
> `initializer: assignment_expression`
>            `| LF_BRACE initializer_list RT_BRACE`
>            `| LF_BRACE initializer_list COMMA RT_BRACE`
>            `;`
>
> `initializer_list: designation_opt initializer`
>                 `| initializer_list COMMA designation_opt initializer`
>                 `;`
>
> `designation_opt: designation`
>                `|` 
>                `;`
>
> `designation: designator_list EQ`
>            `;`
>
> `designator_list: designator`
>                `| designator_list designator`
>                `;`
>
> `designator: LF_SQBR constant_expression RT_SQBR`
>           `| DOT IDENTIFIER`
>           `;`

- ##### STATEMENTS

> `statement: labeled_statement`
>          `| compound_statement`
>          `| expression_statement`
>          `| selection_statement`
>          `| iteration_statement`
>          `| jump_statement`
>          `;`
>
> `labeled_statement: IDENTIFIER COLON statement`
>                  `| CASE constant_expression COLON statement`
>                  `| DEFAULT COLON statement`
>                  `;`
>
> `compound_statement: LF_BRACE block_item_list_opt RT_BRACE`
>                   `;`
>
> `block_item_list_opt: block_item_list`
>                    `|` 
>                    `;`
>
> `block_item_list: block_item`
>                `| block_item_list block_item`
>                `;`
>
> `block_item: declaration`
>           `| statement`
>           `;`
>
> `expression_statement: expression_opt SEMICOLON`
>                     `;`
>
> `expression_opt: expression`
>               `|` 
>               `;`
>
> `selection_statement: IF LF_PRNTH expression RT_PRNTH statement`
>                    `| IF LF_PRNTH expression RT_PRNTH statement ELSE statement`
>                    `| SWITCH LF_PRNTH expression RT_PRNTH statement`
>                    `;`
>
> `iteration_statement: WHILE LF_PRNTH expression RT_PRNTH statement`
>                    `| DO statement WHILE LF_PRNTH expression RT_PRNTH SEMICOLON`
>                    `| FOR LF_PRNTH expression_opt SEMICOLON expression_opt SEMICOLON expression_opt RT_PRNTH statement`
>                    `| FOR LF_PRNTH declaration expression_opt SEMICOLON expression_opt RT_PRNTH statement`
>                    `;`
>
> `jump_statement: GOTO IDENTIFIER SEMICOLON`
>               `| CONTINUE SEMICOLON`
>               `| BREAK SEMICOLON`
>               `| RETURN expression_opt SEMICOLON`
>               `;`

- ##### EXTERNAL DEFINITIONS

> `translation_unit: external_declaration`
>                 `| translation_unit external_declaration`
>                 `;`
>
> `external_declaration: function_definition`
>                     `| declaration`
>                     `;`
>
> `function_definition: declaration_specifiers declarator declaration_list_opt compound_statement`
>                    `;`
>
> `declaration_list_opt: declaration_list`
>                     `|` 
>                     `;`
>
> `declaration_list: declaration`
>                 `| declaration_list declaration`
>                 `;`

#### Scope of Target Translation

- For simplicity we have restricted *tinyC* further:
  - Skipped shift and bit operators.
  - Supported only `void`, `int`, and `char` types. Skipped double type.
  - Supported only one–dimensional arrays.
  - Supported only `void`, `int`, `char`, `void*`, `int*`, and `char*` types for returns types of functions.
  - No type conversion is supported.

- For I/O, we use a library using in-line assembly language program of x86-64 along with syscall for gcc assembler.:

  - `int printStr(char *)` – prints a string of characters. The parameter is terminated by `‘\0’`. The return value is the number of characters printed.

  - `int printInt(int n)` – prints the integer value of `n` (no newline). It returns the number of characters printed.

  - `int readInt(int *eP)` – reads an integer (signed) and returns it. The parameter is for error (`ERR = 1`, `OK = 0`).

#### Design of the Translator

##### Memory Binding

> This deals with the design of the allocation schema of variables (including parameters and constants) that associates each variable to the respective address expression or register. This handles the following:
>
> - *Handling local variables, parameters, and return value for a function*
>
>   These are automatic and reside in the Activation Record (AR) of the function. Various design schema for AR are possible based on the calling sequence protocol. A sample AR design could be as follows:
>
>   | Offset | Stack Item             | Responsibility               |
>   | ------ | ---------------------- | ---------------------------- |
>   | –ve    | Saved Registers        | Callee Saves & Restores      |
>   | –ve    | Callee Local Data      | Callee defines and uses      |
>   | 0      | Base Pointer of Caller | Callee Saves & Restores      |
>   | 0      | Return Address         | Saved by call, used by `ret` |
>   | +ve    | Return Value           | Callee writes, Caller reads  |
>   | +ve    | Parameters             | Caller writes, Callee reads  |
>
> > ###### Activation Record Structure with Management Protocol
> >
> > - Offset’s in the AR are with respect to the Base Pointer of Callee.
> > - Return Value can alternatively be returned through a register (like accumulator).
> > - The AR will be populated from the Symbol Table of the function.
> > - Symbol Tables of nested blocks will be flattened and its variables allocated within the Symbol Table (and hence the AR) of the function where there occur in. Necessary name mangling will be performed to take care of same lexical name for different variables in different nested scopes.
>
> - *Handling global variables* (note that local static variables are not allowed in *tinyC*)
>
>   Allocation is done statically and allocations are generated in the static area. This will be populated from global symbol table (`ST.gbl`).
>
> - *Generating Constants from the Table of Constants*
>
>   String constants are handled as assembler symbols in DATA SEGMENT and integer constants as parts of target code (TEXT SEGMENT)
>
> - *Register Allocations & Assignment*
>
>   Memory binding for variables in registers are created:
>
>   - After a load/store the variable on the activation record and the register have identical values
>
>   - Registers can be used to store temporary computed values
>
>   - Register allocations are often used to pass int or pointer parameters
>
>   - Register allocations are often used to return int or pointer values

##### Code Translation

> This deals with the translation of 3–Address quads to x86-64 assembly code. This handles:
>
> - *Generation of Function Prologue* –Few lines of code at the beginning of a function, which prepare the stack and registers for use within the function.
> - *Generation of Function Epilogue* – Appears at the end of the function, and restores the stack and registers to the state they were in before the function was called.
>
> - *Mapping 3–Address Code to Assembly* – to translate the function body we do the following:
>   - Choose optimised assembly instructions for every expression, assignment and control quad.
>   - Use algebraic simplification & reduction of strength for choice of assembly instructions from a quad.
>   - Use Machine Idioms (like `inc` for `i++` or `++i` in place of `add reg, 1`).

#### Contributors

- Subham Ghosh (Roll No.: 20CS10065)
- Anubhav Dhar (Roll No.: 20CS30004)
