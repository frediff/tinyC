/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_ASS6_20CS10065_20CS30004_PARSER_TAB_H_INCLUDED
# define YY_YY_ASS6_20CS10065_20CS30004_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    IDENTIFIER = 258,              /* IDENTIFIER  */
    INTEGER_CONSTANT = 259,        /* INTEGER_CONSTANT  */
    FLOATING_CONSTANT = 260,       /* FLOATING_CONSTANT  */
    CHARACTER_CONSTANT = 261,      /* CHARACTER_CONSTANT  */
    STRING_LITERAL = 262,          /* STRING_LITERAL  */
    AUTO = 263,                    /* AUTO  */
    STATIC = 264,                  /* STATIC  */
    ENUM = 265,                    /* ENUM  */
    RESTRICT = 266,                /* RESTRICT  */
    UNSIGNED = 267,                /* UNSIGNED  */
    BREAK = 268,                   /* BREAK  */
    EXTERN = 269,                  /* EXTERN  */
    RETURN = 270,                  /* RETURN  */
    VOID = 271,                    /* VOID  */
    CASE = 272,                    /* CASE  */
    FLOAT = 273,                   /* FLOAT  */
    SHORT = 274,                   /* SHORT  */
    VOLATILE = 275,                /* VOLATILE  */
    CHAR = 276,                    /* CHAR  */
    FOR = 277,                     /* FOR  */
    SIGNED = 278,                  /* SIGNED  */
    WHILE = 279,                   /* WHILE  */
    CONST = 280,                   /* CONST  */
    GOTO = 281,                    /* GOTO  */
    SIZEOF = 282,                  /* SIZEOF  */
    BOOL = 283,                    /* BOOL  */
    CONTINUE = 284,                /* CONTINUE  */
    IF = 285,                      /* IF  */
    COMPLEX = 286,                 /* COMPLEX  */
    DEFAULT = 287,                 /* DEFAULT  */
    INLINE = 288,                  /* INLINE  */
    STRUCT = 289,                  /* STRUCT  */
    IMAGINARY = 290,               /* IMAGINARY  */
    DO = 291,                      /* DO  */
    INT = 292,                     /* INT  */
    SWITCH = 293,                  /* SWITCH  */
    DOUBLE = 294,                  /* DOUBLE  */
    LONG = 295,                    /* LONG  */
    TYPEDEF = 296,                 /* TYPEDEF  */
    ELSE = 297,                    /* ELSE  */
    REGISTER = 298,                /* REGISTER  */
    UNION = 299,                   /* UNION  */
    LF_SQBR = 300,                 /* LF_SQBR  */
    RT_SQBR = 301,                 /* RT_SQBR  */
    LF_PRNTH = 302,                /* LF_PRNTH  */
    RT_PRNTH = 303,                /* RT_PRNTH  */
    LF_BRACE = 304,                /* LF_BRACE  */
    RT_BRACE = 305,                /* RT_BRACE  */
    DOT = 306,                     /* DOT  */
    ARROW = 307,                   /* ARROW  */
    PLUS_PLUS = 308,               /* PLUS_PLUS  */
    MINUS_MINUS = 309,             /* MINUS_MINUS  */
    AMPRSND = 310,                 /* AMPRSND  */
    ASTERIX = 311,                 /* ASTERIX  */
    PLUS = 312,                    /* PLUS  */
    MINUS = 313,                   /* MINUS  */
    TILDE = 314,                   /* TILDE  */
    EXCLAIM = 315,                 /* EXCLAIM  */
    SLASH = 316,                   /* SLASH  */
    PRCNT = 317,                   /* PRCNT  */
    L_SHFT = 318,                  /* L_SHFT  */
    R_SHFT = 319,                  /* R_SHFT  */
    LESS_TH = 320,                 /* LESS_TH  */
    MORE_TH = 321,                 /* MORE_TH  */
    LESS_EQ = 322,                 /* LESS_EQ  */
    MORE_EQ = 323,                 /* MORE_EQ  */
    EQ_EQ = 324,                   /* EQ_EQ  */
    NOT_EQ = 325,                  /* NOT_EQ  */
    CAP = 326,                     /* CAP  */
    PIPE = 327,                    /* PIPE  */
    AND_AND = 328,                 /* AND_AND  */
    OR_OR = 329,                   /* OR_OR  */
    Q_MARK = 330,                  /* Q_MARK  */
    COLON = 331,                   /* COLON  */
    SEMICOLON = 332,               /* SEMICOLON  */
    DOT_DOT_DOT = 333,             /* DOT_DOT_DOT  */
    EQ = 334,                      /* EQ  */
    TIMES_EQ = 335,                /* TIMES_EQ  */
    SLASH_EQ = 336,                /* SLASH_EQ  */
    PRCNT_EQ = 337,                /* PRCNT_EQ  */
    PLUS_EQ = 338,                 /* PLUS_EQ  */
    MINUS_EQ = 339,                /* MINUS_EQ  */
    LS_EQ = 340,                   /* LS_EQ  */
    RS_EQ = 341,                   /* RS_EQ  */
    AND_EQ = 342,                  /* AND_EQ  */
    XOR_EQ = 343,                  /* XOR_EQ  */
    OR_EQ = 344,                   /* OR_EQ  */
    COMMA = 345,                   /* COMMA  */
    HASH = 346,                    /* HASH  */
    UNKWN = 347,                   /* UNKWN  */
    NONELSE = 348                  /* NONELSE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 36 "ass6_20CS10065_20CS30004_parser.y"

    char * str_attr;
    int int_attr;
    struct expression * expr;
    struct statement* stmt;
    struct symbol * sym_ptr;
    struct array_info * arr;
    struct string_vector * str_vec;

#line 167 "ass6_20CS10065_20CS30004_parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_ASS6_20CS10065_20CS30004_PARSER_TAB_H_INCLUDED  */
