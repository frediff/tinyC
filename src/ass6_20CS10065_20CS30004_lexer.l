/* 

	***************************************************************************************************************
	****************************************   COMPILERS LABRORATORY  *********************************************
	****************************************       ASSIGNMENT 6       *********************************************
	****************************************    FLEX SPECIFICATIONS   *********************************************
	**************************************** SUBHAM GHOSH (20CS10065) *********************************************
	**************************************** ANUBHAV DHAR (20CS30004) *********************************************
	***************************************************************************************************************

*/


/* C-style #defines */


%x multi_line_comment
%x single_line_comment


%{
	#include "ass6_20CS10065_20CS30004_parser.tab.h"
	#include "ass6_20CS10065_20CS30004_translator.h"

	extern struct symbol_table * curr_table;

	int line_count = 1;
	int all_ok = 1;
%}

/* Start conditions for Single Line Comment and Multi Line Comment */

/* Regular Expression Definitions */

dot 					"."
digit 					[0-9]
non_zero_digit 			[1-9]
non_digit 				[a-zA-Z_]
digit_sequence 			{digit}+
sign 					"+"|"-"
exponent_part 			("e"|"E"){sign}?{digit_sequence}
fractional_constant 	({digit_sequence}?{dot}{digit_sequence})|({digit_sequence}{dot})
escape_sequence 		"\\\'"|"\\\""|"\\?"|"\\\\"|"\\a"|"\\b"|"\\f"|"\\n"|"\\r"|"\\t"|"\\v"
c_char 					[^\'\\\n]|{escape_sequence}
c_char_sequence 		{c_char}+
s_char 					[^\"\\\n]|{escape_sequence}
s_char_sequence 		{s_char}+
identifier 				{non_digit}({digit}|{non_digit})*
integer_constant 		{non_zero_digit}{digit}*|"0"
floating_constant 		({fractional_constant}{exponent_part}?)|({digit_sequence}{exponent_part})
character_constant		\'{c_char_sequence}\'
string_literal 			\"{s_char_sequence}?\"
whitespace				[ \t]
newline					[\n]

%%


"auto"                          	{ return AUTO; }
"enum"                          	{ return ENUM; }
"restrict"                      	{ return RESTRICT; }
"unsigned"                      	{ return UNSIGNED; }
"break"                         	{ return BREAK; }
"extern"                        	{ return EXTERN; }
"return"                        	{ return RETURN; }
"void"                          	{ return VOID; }
"case"                          	{ return CASE; }
"float"                         	{ return FLOAT; }
"short"                         	{ return SHORT; }
"volatile"                      	{ return VOLATILE; }
"char"                          	{ return CHAR; }
"for"                           	{ return FOR; }
"signed"                        	{ return SIGNED; }
"while"                     	    { return WHILE; }
"const"                         	{ return CONST; }
"goto"                          	{ return GOTO; }
"sizeof"                        	{ return SIZEOF; }
"_Bool"                         	{ return BOOL; }
"continue"                      	{ return CONTINUE; }
"if"                            	{ return IF; }
"static"                        	{ return STATIC; }
"_Complex"                      	{ return COMPLEX; }
"default"                       	{ return DEFAULT; }
"inline"                        	{ return INLINE; }
"struct"                        	{ return STRUCT; }
"_Imaginary"                    	{ return IMAGINARY; }
"do"                            	{ return DO; }
"int"                           	{ return INT; }
"switch"                        	{ return SWITCH; }
"double"                        	{ return DOUBLE; }
"long"                      	    { return LONG; }
"typedef"                   	    { return TYPEDEF; }
"else"                      	    { return ELSE; }
"register"                  	   	{ return REGISTER; }
"union"                        		{ return UNION; }


{identifier}						{ yylval.sym_ptr = curr_table -> lookup(yytext); return IDENTIFIER; }
{integer_constant}					{ yylval.str_attr = strdup(yytext); return INTEGER_CONSTANT; }
{floating_constant}					{ yylval.str_attr = strdup(yytext); return FLOATING_CONSTANT; }
{character_constant}				{ yylval.str_attr = strdup(yytext); return CHARACTER_CONSTANT; }
{string_literal}					{ yylval.str_attr = strdup(yytext); return STRING_LITERAL; }


{whitespace} 						{/* do nothing */}
{newline}	 						{++line_count;}


"[" 								{ return LF_SQBR;}
"]" 								{ return RT_SQBR;}
"(" 								{ return LF_PRNTH;}
")" 								{ return RT_PRNTH;}
"{" 								{ return LF_BRACE;}
"}" 								{ return RT_BRACE;}
"." 								{ return DOT;}
"->" 								{ return ARROW;}
"++" 								{ return PLUS_PLUS;}
"--" 								{ return MINUS_MINUS;}
"&" 								{ return AMPRSND;}
"*" 								{ return ASTERIX;}
"+" 								{ return PLUS;}
"-" 								{ return MINUS;}
"~" 								{ return TILDE;}
"!" 								{ return EXCLAIM;}
"/" 								{ return SLASH;}
"%" 								{ return PRCNT;}
"<<" 								{ return L_SHFT;}
">>" 								{ return R_SHFT;}
"<" 								{ return LESS_TH;}
">" 								{ return MORE_TH;}
"<=" 								{ return LESS_EQ;}
">=" 								{ return MORE_EQ;}
"==" 								{ return EQ_EQ;}
"!=" 								{ return NOT_EQ;}
"^" 								{ return CAP;}
"|" 								{ return PIPE;}
"&&" 								{ return AND_AND;}
"||" 								{ return OR_OR;}
"?" 								{ return Q_MARK;}
":" 								{ return COLON;}
";" 								{ return SEMICOLON;}
"..." 								{ return DOT_DOT_DOT;}
"=" 								{ return EQ;}
"*=" 								{ return TIMES_EQ;}
"/=" 								{ return SLASH_EQ;}
"%=" 								{ return PRCNT_EQ;}
"+=" 								{ return PLUS_EQ;}
"-=" 								{ return MINUS_EQ;}
"<<=" 								{ return LS_EQ;}
">>=" 								{ return RS_EQ;}
"&=" 								{ return AND_EQ;}
"^=" 								{ return XOR_EQ;}
"|=" 								{ return OR_EQ;}
"," 								{ return COMMA;}
"#" 								{ return HASH;}



"//"								{BEGIN(single_line_comment);}
<single_line_comment>[^\n]+ 		{/* do nothing */}
<single_line_comment>[\n]			{BEGIN(INITIAL); ++line_count;}


"/*" 								{BEGIN(multi_line_comment);}
<multi_line_comment>[^*\n]+			{/* do nothing */}
<multi_line_comment>"*"+[^*/\n]*	{/* do nothing */}
<multi_line_comment>[\n]			{++line_count;}
<multi_line_comment>"*"+"/"			{BEGIN(INITIAL);}

.									{printf("Unkown token \"%s\"\n", yytext); return UNKWN;}

%%

int yywrap(void){
	return(1);
}
