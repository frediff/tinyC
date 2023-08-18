/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 12 "ass6_20CS10065_20CS30004_parser.y"

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


#line 95 "ass6_20CS10065_20CS30004_parser.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "ass6_20CS10065_20CS30004_parser.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_IDENTIFIER = 3,                 /* IDENTIFIER  */
  YYSYMBOL_INTEGER_CONSTANT = 4,           /* INTEGER_CONSTANT  */
  YYSYMBOL_FLOATING_CONSTANT = 5,          /* FLOATING_CONSTANT  */
  YYSYMBOL_CHARACTER_CONSTANT = 6,         /* CHARACTER_CONSTANT  */
  YYSYMBOL_STRING_LITERAL = 7,             /* STRING_LITERAL  */
  YYSYMBOL_AUTO = 8,                       /* AUTO  */
  YYSYMBOL_STATIC = 9,                     /* STATIC  */
  YYSYMBOL_ENUM = 10,                      /* ENUM  */
  YYSYMBOL_RESTRICT = 11,                  /* RESTRICT  */
  YYSYMBOL_UNSIGNED = 12,                  /* UNSIGNED  */
  YYSYMBOL_BREAK = 13,                     /* BREAK  */
  YYSYMBOL_EXTERN = 14,                    /* EXTERN  */
  YYSYMBOL_RETURN = 15,                    /* RETURN  */
  YYSYMBOL_VOID = 16,                      /* VOID  */
  YYSYMBOL_CASE = 17,                      /* CASE  */
  YYSYMBOL_FLOAT = 18,                     /* FLOAT  */
  YYSYMBOL_SHORT = 19,                     /* SHORT  */
  YYSYMBOL_VOLATILE = 20,                  /* VOLATILE  */
  YYSYMBOL_CHAR = 21,                      /* CHAR  */
  YYSYMBOL_FOR = 22,                       /* FOR  */
  YYSYMBOL_SIGNED = 23,                    /* SIGNED  */
  YYSYMBOL_WHILE = 24,                     /* WHILE  */
  YYSYMBOL_CONST = 25,                     /* CONST  */
  YYSYMBOL_GOTO = 26,                      /* GOTO  */
  YYSYMBOL_SIZEOF = 27,                    /* SIZEOF  */
  YYSYMBOL_BOOL = 28,                      /* BOOL  */
  YYSYMBOL_CONTINUE = 29,                  /* CONTINUE  */
  YYSYMBOL_IF = 30,                        /* IF  */
  YYSYMBOL_COMPLEX = 31,                   /* COMPLEX  */
  YYSYMBOL_DEFAULT = 32,                   /* DEFAULT  */
  YYSYMBOL_INLINE = 33,                    /* INLINE  */
  YYSYMBOL_STRUCT = 34,                    /* STRUCT  */
  YYSYMBOL_IMAGINARY = 35,                 /* IMAGINARY  */
  YYSYMBOL_DO = 36,                        /* DO  */
  YYSYMBOL_INT = 37,                       /* INT  */
  YYSYMBOL_SWITCH = 38,                    /* SWITCH  */
  YYSYMBOL_DOUBLE = 39,                    /* DOUBLE  */
  YYSYMBOL_LONG = 40,                      /* LONG  */
  YYSYMBOL_TYPEDEF = 41,                   /* TYPEDEF  */
  YYSYMBOL_ELSE = 42,                      /* ELSE  */
  YYSYMBOL_REGISTER = 43,                  /* REGISTER  */
  YYSYMBOL_UNION = 44,                     /* UNION  */
  YYSYMBOL_LF_SQBR = 45,                   /* LF_SQBR  */
  YYSYMBOL_RT_SQBR = 46,                   /* RT_SQBR  */
  YYSYMBOL_LF_PRNTH = 47,                  /* LF_PRNTH  */
  YYSYMBOL_RT_PRNTH = 48,                  /* RT_PRNTH  */
  YYSYMBOL_LF_BRACE = 49,                  /* LF_BRACE  */
  YYSYMBOL_RT_BRACE = 50,                  /* RT_BRACE  */
  YYSYMBOL_DOT = 51,                       /* DOT  */
  YYSYMBOL_ARROW = 52,                     /* ARROW  */
  YYSYMBOL_PLUS_PLUS = 53,                 /* PLUS_PLUS  */
  YYSYMBOL_MINUS_MINUS = 54,               /* MINUS_MINUS  */
  YYSYMBOL_AMPRSND = 55,                   /* AMPRSND  */
  YYSYMBOL_ASTERIX = 56,                   /* ASTERIX  */
  YYSYMBOL_PLUS = 57,                      /* PLUS  */
  YYSYMBOL_MINUS = 58,                     /* MINUS  */
  YYSYMBOL_TILDE = 59,                     /* TILDE  */
  YYSYMBOL_EXCLAIM = 60,                   /* EXCLAIM  */
  YYSYMBOL_SLASH = 61,                     /* SLASH  */
  YYSYMBOL_PRCNT = 62,                     /* PRCNT  */
  YYSYMBOL_L_SHFT = 63,                    /* L_SHFT  */
  YYSYMBOL_R_SHFT = 64,                    /* R_SHFT  */
  YYSYMBOL_LESS_TH = 65,                   /* LESS_TH  */
  YYSYMBOL_MORE_TH = 66,                   /* MORE_TH  */
  YYSYMBOL_LESS_EQ = 67,                   /* LESS_EQ  */
  YYSYMBOL_MORE_EQ = 68,                   /* MORE_EQ  */
  YYSYMBOL_EQ_EQ = 69,                     /* EQ_EQ  */
  YYSYMBOL_NOT_EQ = 70,                    /* NOT_EQ  */
  YYSYMBOL_CAP = 71,                       /* CAP  */
  YYSYMBOL_PIPE = 72,                      /* PIPE  */
  YYSYMBOL_AND_AND = 73,                   /* AND_AND  */
  YYSYMBOL_OR_OR = 74,                     /* OR_OR  */
  YYSYMBOL_Q_MARK = 75,                    /* Q_MARK  */
  YYSYMBOL_COLON = 76,                     /* COLON  */
  YYSYMBOL_SEMICOLON = 77,                 /* SEMICOLON  */
  YYSYMBOL_DOT_DOT_DOT = 78,               /* DOT_DOT_DOT  */
  YYSYMBOL_EQ = 79,                        /* EQ  */
  YYSYMBOL_TIMES_EQ = 80,                  /* TIMES_EQ  */
  YYSYMBOL_SLASH_EQ = 81,                  /* SLASH_EQ  */
  YYSYMBOL_PRCNT_EQ = 82,                  /* PRCNT_EQ  */
  YYSYMBOL_PLUS_EQ = 83,                   /* PLUS_EQ  */
  YYSYMBOL_MINUS_EQ = 84,                  /* MINUS_EQ  */
  YYSYMBOL_LS_EQ = 85,                     /* LS_EQ  */
  YYSYMBOL_RS_EQ = 86,                     /* RS_EQ  */
  YYSYMBOL_AND_EQ = 87,                    /* AND_EQ  */
  YYSYMBOL_XOR_EQ = 88,                    /* XOR_EQ  */
  YYSYMBOL_OR_EQ = 89,                     /* OR_EQ  */
  YYSYMBOL_COMMA = 90,                     /* COMMA  */
  YYSYMBOL_HASH = 91,                      /* HASH  */
  YYSYMBOL_UNKWN = 92,                     /* UNKWN  */
  YYSYMBOL_NONELSE = 93,                   /* NONELSE  */
  YYSYMBOL_YYACCEPT = 94,                  /* $accept  */
  YYSYMBOL_marker_M = 95,                  /* marker_M  */
  YYSYMBOL_guard_N = 96,                   /* guard_N  */
  YYSYMBOL_enter_func = 97,                /* enter_func  */
  YYSYMBOL_create_label = 98,              /* create_label  */
  YYSYMBOL_enter_block = 99,               /* enter_block  */
  YYSYMBOL_primary_expression = 100,       /* primary_expression  */
  YYSYMBOL_postfix_expression = 101,       /* postfix_expression  */
  YYSYMBOL_argument_expression_list_opt = 102, /* argument_expression_list_opt  */
  YYSYMBOL_argument_expression_list = 103, /* argument_expression_list  */
  YYSYMBOL_unary_expression = 104,         /* unary_expression  */
  YYSYMBOL_unary_operator = 105,           /* unary_operator  */
  YYSYMBOL_cast_expression = 106,          /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 107, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 108,      /* additive_expression  */
  YYSYMBOL_shift_expression = 109,         /* shift_expression  */
  YYSYMBOL_relational_expression = 110,    /* relational_expression  */
  YYSYMBOL_equality_expression = 111,      /* equality_expression  */
  YYSYMBOL_AND_expression = 112,           /* AND_expression  */
  YYSYMBOL_exclusive_OR_expression = 113,  /* exclusive_OR_expression  */
  YYSYMBOL_inclusive_OR_expression = 114,  /* inclusive_OR_expression  */
  YYSYMBOL_logical_AND_expression = 115,   /* logical_AND_expression  */
  YYSYMBOL_logical_OR_expression = 116,    /* logical_OR_expression  */
  YYSYMBOL_conditional_expression = 117,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 118,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 119,      /* assignment_operator  */
  YYSYMBOL_expression = 120,               /* expression  */
  YYSYMBOL_constant_expression = 121,      /* constant_expression  */
  YYSYMBOL_declaration = 122,              /* declaration  */
  YYSYMBOL_init_declarator_list_opt = 123, /* init_declarator_list_opt  */
  YYSYMBOL_declaration_specifiers = 124,   /* declaration_specifiers  */
  YYSYMBOL_declaration_specifiers_opt = 125, /* declaration_specifiers_opt  */
  YYSYMBOL_init_declarator_list = 126,     /* init_declarator_list  */
  YYSYMBOL_init_declarator = 127,          /* init_declarator  */
  YYSYMBOL_storage_class_specifier = 128,  /* storage_class_specifier  */
  YYSYMBOL_type_specifier = 129,           /* type_specifier  */
  YYSYMBOL_specifier_qualifier_list = 130, /* specifier_qualifier_list  */
  YYSYMBOL_specifier_qualifier_list_opt = 131, /* specifier_qualifier_list_opt  */
  YYSYMBOL_enum_specifier = 132,           /* enum_specifier  */
  YYSYMBOL_identifier_opt = 133,           /* identifier_opt  */
  YYSYMBOL_enumerator_list = 134,          /* enumerator_list  */
  YYSYMBOL_enumerator = 135,               /* enumerator  */
  YYSYMBOL_type_qualifier = 136,           /* type_qualifier  */
  YYSYMBOL_function_specifier = 137,       /* function_specifier  */
  YYSYMBOL_declarator = 138,               /* declarator  */
  YYSYMBOL_pointer_opt = 139,              /* pointer_opt  */
  YYSYMBOL_direct_declarator = 140,        /* direct_declarator  */
  YYSYMBOL_type_qualifier_list_opt = 141,  /* type_qualifier_list_opt  */
  YYSYMBOL_assignment_expression_opt = 142, /* assignment_expression_opt  */
  YYSYMBOL_pointer = 143,                  /* pointer  */
  YYSYMBOL_type_qualifier_list = 144,      /* type_qualifier_list  */
  YYSYMBOL_parameter_type_list = 145,      /* parameter_type_list  */
  YYSYMBOL_parameter_list = 146,           /* parameter_list  */
  YYSYMBOL_parameter_declaration = 147,    /* parameter_declaration  */
  YYSYMBOL_identifier_list = 148,          /* identifier_list  */
  YYSYMBOL_type_name = 149,                /* type_name  */
  YYSYMBOL_initializer = 150,              /* initializer  */
  YYSYMBOL_initializer_list = 151,         /* initializer_list  */
  YYSYMBOL_designation_opt = 152,          /* designation_opt  */
  YYSYMBOL_designation = 153,              /* designation  */
  YYSYMBOL_designator_list = 154,          /* designator_list  */
  YYSYMBOL_designator = 155,               /* designator  */
  YYSYMBOL_statement = 156,                /* statement  */
  YYSYMBOL_labeled_statement = 157,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 158,       /* compound_statement  */
  YYSYMBOL_block_item_list_opt = 159,      /* block_item_list_opt  */
  YYSYMBOL_block_item_list = 160,          /* block_item_list  */
  YYSYMBOL_block_item = 161,               /* block_item  */
  YYSYMBOL_expression_statement = 162,     /* expression_statement  */
  YYSYMBOL_expression_opt = 163,           /* expression_opt  */
  YYSYMBOL_selection_statement = 164,      /* selection_statement  */
  YYSYMBOL_iteration_statement = 165,      /* iteration_statement  */
  YYSYMBOL_jump_statement = 166,           /* jump_statement  */
  YYSYMBOL_translation_unit = 167,         /* translation_unit  */
  YYSYMBOL_external_declaration = 168,     /* external_declaration  */
  YYSYMBOL_function_definition = 169,      /* function_definition  */
  YYSYMBOL_declaration_list_opt = 170,     /* declaration_list_opt  */
  YYSYMBOL_declaration_list = 171          /* declaration_list  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int16 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  46
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1029

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  94
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  78
/* YYNRULES -- Number of rules.  */
#define YYNRULES  213
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  362

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   348


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   238,   238,   242,   253,   264,   268,   284,   289,   296,
     303,   310,   318,   322,   331,   365,   375,   376,   377,   388,
     398,   399,   402,   404,   407,   412,   418,   419,   426,   433,
     464,   465,   468,   470,   472,   474,   476,   478,   482,   483,
     493,   506,   531,   556,   583,   584,   600,   618,   619,   625,
     633,   634,   647,   660,   673,   688,   689,   702,   717,   718,
     728,   729,   739,   740,   750,   751,   760,   761,   770,   771,
     793,   794,   819,   820,   821,   822,   823,   824,   825,   826,
     827,   828,   829,   832,   833,   836,   841,   844,   845,   848,
     849,   850,   851,   854,   855,   858,   859,   862,   863,   882,
     883,   884,   885,   888,   890,   892,   894,   896,   898,   900,
     902,   904,   906,   908,   910,   912,   916,   917,   920,   922,
     927,   928,   929,   932,   933,   936,   937,   940,   941,   944,
     946,   948,   952,   955,   964,   966,   969,   974,   976,   977,
     990,   991,   992,  1004,  1005,  1019,  1020,  1023,  1025,  1028,
    1033,  1040,  1041,  1044,  1045,  1048,  1049,  1052,  1057,  1060,
    1061,  1064,  1067,  1069,  1070,  1073,  1074,  1077,  1078,  1081,
    1084,  1085,  1088,  1089,  1094,  1095,  1096,  1101,  1102,  1103,
    1106,  1107,  1108,  1111,  1119,  1121,  1124,  1125,  1132,  1134,
    1137,  1144,  1146,  1149,  1156,  1164,  1167,  1175,  1182,  1191,
    1194,  1195,  1196,  1197,  1204,  1213,  1214,  1217,  1218,  1221,
    1229,  1230,  1233,  1234
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "IDENTIFIER",
  "INTEGER_CONSTANT", "FLOATING_CONSTANT", "CHARACTER_CONSTANT",
  "STRING_LITERAL", "AUTO", "STATIC", "ENUM", "RESTRICT", "UNSIGNED",
  "BREAK", "EXTERN", "RETURN", "VOID", "CASE", "FLOAT", "SHORT",
  "VOLATILE", "CHAR", "FOR", "SIGNED", "WHILE", "CONST", "GOTO", "SIZEOF",
  "BOOL", "CONTINUE", "IF", "COMPLEX", "DEFAULT", "INLINE", "STRUCT",
  "IMAGINARY", "DO", "INT", "SWITCH", "DOUBLE", "LONG", "TYPEDEF", "ELSE",
  "REGISTER", "UNION", "LF_SQBR", "RT_SQBR", "LF_PRNTH", "RT_PRNTH",
  "LF_BRACE", "RT_BRACE", "DOT", "ARROW", "PLUS_PLUS", "MINUS_MINUS",
  "AMPRSND", "ASTERIX", "PLUS", "MINUS", "TILDE", "EXCLAIM", "SLASH",
  "PRCNT", "L_SHFT", "R_SHFT", "LESS_TH", "MORE_TH", "LESS_EQ", "MORE_EQ",
  "EQ_EQ", "NOT_EQ", "CAP", "PIPE", "AND_AND", "OR_OR", "Q_MARK", "COLON",
  "SEMICOLON", "DOT_DOT_DOT", "EQ", "TIMES_EQ", "SLASH_EQ", "PRCNT_EQ",
  "PLUS_EQ", "MINUS_EQ", "LS_EQ", "RS_EQ", "AND_EQ", "XOR_EQ", "OR_EQ",
  "COMMA", "HASH", "UNKWN", "NONELSE", "$accept", "marker_M", "guard_N",
  "enter_func", "create_label", "enter_block", "primary_expression",
  "postfix_expression", "argument_expression_list_opt",
  "argument_expression_list", "unary_expression", "unary_operator",
  "cast_expression", "multiplicative_expression", "additive_expression",
  "shift_expression", "relational_expression", "equality_expression",
  "AND_expression", "exclusive_OR_expression", "inclusive_OR_expression",
  "logical_AND_expression", "logical_OR_expression",
  "conditional_expression", "assignment_expression", "assignment_operator",
  "expression", "constant_expression", "declaration",
  "init_declarator_list_opt", "declaration_specifiers",
  "declaration_specifiers_opt", "init_declarator_list", "init_declarator",
  "storage_class_specifier", "type_specifier", "specifier_qualifier_list",
  "specifier_qualifier_list_opt", "enum_specifier", "identifier_opt",
  "enumerator_list", "enumerator", "type_qualifier", "function_specifier",
  "declarator", "pointer_opt", "direct_declarator",
  "type_qualifier_list_opt", "assignment_expression_opt", "pointer",
  "type_qualifier_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "identifier_list", "type_name", "initializer",
  "initializer_list", "designation_opt", "designation", "designator_list",
  "designator", "statement", "labeled_statement", "compound_statement",
  "block_item_list_opt", "block_item_list", "block_item",
  "expression_statement", "expression_opt", "selection_statement",
  "iteration_statement", "jump_statement", "translation_unit",
  "external_declaration", "function_definition", "declaration_list_opt",
  "declaration_list", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-251)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-212)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     955,  -251,  -251,    40,  -251,  -251,  -251,  -251,  -251,  -251,
    -251,  -251,  -251,  -251,  -251,  -251,  -251,  -251,  -251,  -251,
    -251,  -251,  -251,   -37,   955,   955,  -251,   955,   955,   878,
    -251,  -251,     2,     4,    24,    -5,     8,  -251,   341,    12,
    -251,  -251,  -251,  -251,  -251,  -251,  -251,  -251,   102,  -251,
      52,    24,  -251,    52,   719,  -251,   -37,  -251,   955,  -251,
      52,     1,    35,    26,  -251,  -251,  -251,  -251,    42,  -251,
    -251,  -251,  -251,  -251,   758,   544,    -6,   783,   783,  -251,
    -251,  -251,  -251,  -251,  -251,  -251,    79,   766,   817,  -251,
      84,    85,     6,   124,    82,    70,    58,    90,    66,   133,
    -251,  -251,  -251,  -251,  -251,   135,   660,   153,   817,  -251,
      10,   544,  -251,  -251,   -28,   989,  -251,   989,   137,   817,
     178,    46,   719,  -251,    56,  -251,   544,  -251,  -251,   817,
     817,   190,   207,  -251,  -251,  -251,  -251,  -251,  -251,  -251,
    -251,  -251,  -251,  -251,  -251,  -251,   817,  -251,  -251,   817,
     817,   817,   817,   817,   817,   817,   817,   817,   817,   817,
     817,   817,   817,   817,   817,  -251,  -251,   141,   163,  -251,
      24,  -251,   173,   685,  -251,   914,   -26,  -251,  -251,  -251,
    -251,   179,  -251,   817,  -251,  -251,  -251,   744,   183,  -251,
    -251,   104,  -251,  -251,  -251,   182,   -29,   185,   144,  -251,
    -251,  -251,  -251,  -251,  -251,  -251,    84,    84,    85,    85,
       6,     6,     6,     6,   124,   124,    82,    70,    58,   817,
     817,  -251,   288,   817,  -251,   817,   191,  -251,   -23,   188,
     148,  -251,  -251,   238,   194,  -251,    -6,  -251,  -251,  -251,
     719,   194,  -251,  -251,   817,    90,    66,   817,   168,   170,
     199,   817,   198,  -251,   245,   172,   203,   175,  -251,   214,
    -251,   174,  -251,  -251,  -251,  -251,   212,   213,  -251,  -251,
     189,  -251,  -251,  -251,   219,   221,  -251,  -251,  -251,   384,
    -251,    47,  -251,  -251,   174,   602,  -251,  -251,    29,   192,
     486,   222,   195,  -251,   817,   602,   602,   817,   288,  -251,
     428,  -251,  -251,  -251,  -251,  -251,  -251,   108,   197,  -251,
    -251,   602,   817,   200,   817,  -251,   -24,  -251,  -251,   -22,
     224,  -251,  -251,  -251,  -251,   201,  -251,     9,  -251,   247,
     602,  -251,   817,   817,   817,  -251,   602,   228,  -251,  -251,
     231,   204,   602,  -251,   817,   602,  -251,  -251,   241,    23,
    -251,   817,  -251,   208,  -251,   602,  -251,   232,  -251,  -251,
     602,  -251
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,   101,   100,   124,   130,   111,    99,   103,   108,   105,
     131,   104,   110,   129,   112,   113,   132,   114,   106,   109,
     107,   102,   208,   135,    94,    94,   115,    94,    94,     0,
     205,   207,   122,     0,   146,     0,    87,    95,    97,     0,
     134,    93,    89,    90,    91,    92,     1,   206,     0,   151,
     149,   145,    86,   135,     0,   212,   135,     4,   210,   136,
     135,   133,   127,     0,   125,   150,   152,    96,    97,     7,
       8,     9,    10,    11,     0,     0,   168,     0,     0,    32,
      33,    34,    35,    36,    37,    13,    26,    38,     0,    40,
      44,    47,    50,    55,    58,    60,    62,    64,    66,    68,
      70,   162,    98,     5,   213,     0,   148,     4,     0,   120,
       0,     0,    30,    83,     0,   119,   161,   119,     0,     0,
       0,     0,     0,   167,     0,   170,     0,    27,    28,     0,
      23,     0,     0,    18,    19,    72,    73,    74,    75,    76,
      77,    78,    79,    80,    81,    82,     0,    38,    29,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     2,     2,     0,     0,   137,
     146,   147,     0,   148,   159,     0,     0,    85,   128,   121,
     126,     0,    12,     0,   118,   116,   117,     0,     0,   173,
     163,   168,   165,   169,   171,     0,     0,     0,    22,    24,
      16,    17,    71,    41,    42,    43,    45,    46,    48,    49,
      51,    52,    53,    54,    56,    57,    59,    61,    63,     0,
       0,     2,   185,     0,   139,     0,     0,   144,   135,     0,
     153,   155,   143,     0,    31,    84,   168,    39,   172,   164,
       0,     0,    14,    15,     0,    65,    67,     0,     7,     0,
       0,     0,     0,     2,     0,     0,     0,     0,     2,     0,
       6,   191,   188,   189,   174,   175,     0,     2,   186,   176,
       0,   177,   178,   179,     0,     0,   138,   157,   142,     0,
     160,     0,   166,    25,     3,   192,   202,   204,     0,     0,
     192,     0,     0,   201,     0,   192,   192,     0,   185,   209,
     192,   190,   140,   141,   154,   156,    20,   168,     0,   180,
     203,   192,   192,     0,     0,   200,     0,   182,     2,     0,
       0,   187,    21,     2,   181,     0,     2,     0,     2,     0,
     192,   183,     0,   192,   192,     2,   192,     0,   195,    69,
       0,     0,   192,     3,     0,   192,     2,   196,   193,     0,
     199,   192,     2,     0,     3,   192,   197,     0,   194,     2,
     192,   198
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -251,  -158,  -250,   177,  -251,  -251,  -251,  -251,  -251,  -251,
     -72,  -251,   -76,    62,    67,    41,    64,   125,   123,   158,
     110,    68,  -251,  -101,   -12,  -251,   -74,  -110,     0,  -251,
       3,   139,  -251,   236,  -251,   -61,   -94,   215,  -251,  -251,
    -251,   220,    69,  -251,   -19,  -251,  -251,   164,   160,   286,
     233,  -251,  -251,    59,  -251,    -9,  -112,   118,  -180,  -251,
    -251,   216,  -173,  -251,  -251,    60,  -251,    63,  -251,  -116,
    -251,  -251,  -251,  -251,   327,  -251,  -251,  -251
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,   219,   167,   103,   168,   298,    85,    86,   197,   198,
      87,    88,    89,    90,    91,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   113,   146,   261,   178,   262,    35,
      56,    42,    36,    37,    24,    25,   116,   185,    26,    33,
      63,    64,    27,    28,    68,    39,    61,    50,   172,    40,
      51,   229,   230,   231,   176,   118,   102,   121,   122,   123,
     124,   125,   263,   264,   265,   266,   267,   268,   269,   270,
     271,   272,   273,    29,    30,    31,    57,    58
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      22,   114,   112,    23,    38,   127,   128,   177,   220,   188,
     192,   240,   148,    62,   115,    59,   147,   242,   177,    34,
     182,   184,   232,   184,   328,  -158,   330,    41,    41,    22,
      41,    41,    23,    34,   308,     4,   147,   114,    55,   119,
     -88,   105,   101,    32,    10,   120,   106,   147,   107,    13,
     115,  -123,   114,    48,   115,   196,   115,   335,   104,    60,
     179,   183,   183,   247,   233,   115,   183,  -158,   183,   154,
     155,   353,    52,   203,   204,   205,   109,   147,   147,   147,
     147,   147,   147,   147,   147,   147,   147,   147,   147,   147,
     147,   147,   147,   348,   171,   291,   190,   306,    53,   183,
     296,   119,   181,    49,   357,    62,   310,   120,    34,   300,
     101,   237,   309,   183,   108,   147,   110,   195,   199,   183,
      66,    54,   317,   318,   129,   162,   130,   240,   282,   163,
     131,   132,   133,   134,   202,   193,   191,   307,   324,   165,
     149,   289,   152,   153,   117,   150,   151,   147,   147,   119,
     177,   160,   161,   119,   239,   120,   174,   338,   322,   120,
     329,   171,   164,   343,    43,   332,    44,    45,   334,   347,
     336,   235,   350,   284,   313,    49,   288,   342,   228,   147,
     117,   189,   358,   169,   117,   187,   117,   361,   351,   156,
     157,   158,   159,   200,   355,   117,   325,   210,   211,   212,
     213,   360,    69,    70,    71,    72,    73,   166,    -3,   277,
     201,   274,   222,   275,   206,   207,   221,   340,   341,   224,
     316,   208,   209,   319,   214,   215,    74,   234,   101,   238,
     241,   339,   283,   243,   244,   354,   278,   276,   279,    49,
     327,   280,    66,   236,   285,   290,    75,   286,   292,   293,
     294,   295,    77,    78,    79,    80,    81,    82,    83,    84,
     147,   297,   299,  -184,   183,   302,   301,   303,   311,   314,
     349,   337,   315,   323,   331,   344,   287,   326,   333,   345,
     359,   346,   228,   352,   175,   356,   217,   216,   246,    67,
     312,   248,    70,    71,    72,    73,     1,     2,     3,     4,
       5,   249,     6,   250,     7,   251,     8,     9,    10,    11,
     252,    12,   253,    13,   254,    74,    14,   255,   256,    15,
     257,    16,   218,    17,   258,    18,   259,    19,    20,   245,
     180,    21,   186,   226,   223,    75,    65,   260,   305,   173,
     194,    77,    78,    79,    80,    81,    82,    83,    84,     1,
       2,     3,     4,     5,   281,     6,    47,     7,   320,     8,
       9,    10,    11,   321,    12,  -192,    13,     0,     0,    14,
       0,     0,    15,     0,    16,     0,    17,     0,    18,     0,
      19,    20,     0,     0,    21,     0,     0,     0,     0,     0,
    -211,     0,     1,     2,     3,     4,     5,     0,     6,     0,
       7,     0,     8,     9,    10,    11,     0,    12,     0,    13,
       0,     0,    14,     0,     0,    15,     0,    16,     0,    17,
      54,    18,     0,    19,    20,     0,     0,    21,     0,     0,
       0,   248,    70,    71,    72,    73,     1,     2,     3,     4,
       5,   249,     6,   250,     7,   251,     8,     9,    10,    11,
     252,    12,   253,    13,   254,    74,    14,   255,   256,    15,
     257,    16,   304,    17,   258,    18,   259,    19,    20,     0,
       0,    21,     0,     0,     0,    75,     0,   260,     0,     0,
       0,    77,    78,    79,    80,    81,    82,    83,    84,    69,
      70,    71,    72,    73,     1,     2,     3,     4,     5,     0,
       6,     0,     7,     0,     8,     9,    10,    11,     0,    12,
       0,    13,     0,    74,    14,     0,     0,    15,     0,    16,
       0,    17,     0,    18,     0,    19,    20,     0,     0,    21,
       0,     0,     0,    75,     0,     0,     0,     0,     0,    77,
      78,    79,    80,    81,    82,    83,    84,    69,    70,    71,
      72,    73,     0,     0,     3,     4,     5,     0,     0,     0,
       7,     0,     8,     9,    10,    11,     0,    12,     0,    13,
       0,    74,    14,     0,     0,    15,     0,     0,     0,    17,
       0,    18,     0,    19,    20,     0,     0,     0,     0,     0,
       0,    75,     0,     0,     0,     0,     0,    77,    78,    79,
      80,    81,    82,    83,    84,   248,    70,    71,    72,    73,
       0,     0,     0,     0,     0,   249,     0,   250,     0,   251,
       0,     0,     0,     0,   252,     0,   253,     0,   254,    74,
       0,   255,   256,     0,   257,     0,     0,     0,   258,     0,
     259,     0,     0,     0,     0,     0,     0,     0,     0,    75,
       0,   260,     0,     0,     0,    77,    78,    79,    80,    81,
      82,    83,    84,    69,    70,    71,    72,    73,     0,   170,
       0,     4,     0,     0,     0,     0,     0,     0,     0,     0,
      10,     0,     0,     0,     0,    13,     0,    74,    69,    70,
      71,    72,    73,     0,   225,     0,     4,     0,     0,     0,
       0,     0,     0,     0,     0,    10,     0,    75,     0,     0,
      13,     0,    74,    77,    78,    79,    80,    81,    82,    83,
      84,     0,    69,    70,    71,    72,    73,     0,     0,     0,
       0,     0,    75,     0,     0,     0,     0,     0,    77,    78,
      79,    80,    81,    82,    83,    84,    74,    69,    70,    71,
      72,    73,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    69,    70,    71,    72,    73,    75,     0,    76,     0,
       0,    74,    77,    78,    79,    80,    81,    82,    83,    84,
       0,     0,     0,     0,     0,    74,    69,    70,    71,    72,
      73,    75,     0,   236,     0,     0,     0,    77,    78,    79,
      80,    81,    82,    83,    84,   111,     0,     0,     0,     0,
      74,    77,    78,    79,    80,    81,    82,    83,    84,     0,
      69,    70,    71,    72,    73,     0,     0,     0,     0,     0,
     126,     0,     0,     0,     0,     0,    77,    78,    79,    80,
      81,    82,    83,    84,    74,   135,   136,   137,   138,   139,
     140,   141,   142,   143,   144,   145,     0,     0,     0,     0,
       0,     0,     0,     0,    75,     0,     0,     0,     0,     0,
      77,    78,    79,    80,    81,    82,    83,    84,    46,     0,
       0,     0,     0,     0,     0,     0,     1,     2,     3,     4,
       5,     0,     6,     0,     7,     0,     8,     9,    10,    11,
       0,    12,     0,    13,     0,     0,    14,     0,     0,    15,
       0,    16,     0,    17,     0,    18,     0,    19,    20,     0,
       0,    21,     1,     2,     3,     4,     5,     0,     6,     0,
       7,     0,     8,     9,    10,    11,     0,    12,     0,    13,
       0,     0,    14,     0,     0,    15,     0,    16,     0,    17,
       0,    18,     0,    19,    20,     0,     0,    21,     0,     0,
       0,     0,   227,     1,     2,     3,     4,     5,     0,     6,
       0,     7,     0,     8,     9,    10,    11,     0,    12,     0,
      13,     0,     0,    14,     0,     0,    15,     0,    16,     0,
      17,     0,    18,     0,    19,    20,     0,     0,    21,     3,
       4,     5,     0,     0,     0,     7,     0,     8,     9,    10,
      11,     0,    12,     0,    13,     0,     0,    14,     0,     0,
      15,     0,     0,     0,    17,     0,    18,     0,    19,    20
};

static const yytype_int16 yycheck[] =
{
       0,    75,    74,     0,    23,    77,    78,   108,   166,   119,
     122,   191,    88,     3,    75,     3,    88,    46,   119,    56,
      48,   115,    48,   117,    48,    48,    48,    24,    25,    29,
      27,    28,    29,    56,   284,    11,   108,   111,    38,    45,
      77,    60,    54,     3,    20,    51,    45,   119,    47,    25,
     111,    49,   126,    49,   115,   129,   117,    48,    58,    47,
      50,    90,    90,   221,    90,   126,    90,    90,    90,    63,
      64,    48,    77,   149,   150,   151,    50,   149,   150,   151,
     152,   153,   154,   155,   156,   157,   158,   159,   160,   161,
     162,   163,   164,   343,   106,   253,    50,    50,    90,    90,
     258,    45,   111,    34,   354,     3,    77,    51,    56,   267,
     122,   187,   285,    90,    79,   187,    90,   126,   130,    90,
      51,    79,   295,   296,    45,    55,    47,   307,   240,    71,
      51,    52,    53,    54,   146,    79,    90,    90,   311,    73,
      56,   251,    57,    58,    75,    61,    62,   219,   220,    45,
     251,    69,    70,    45,    50,    51,     3,   330,    50,    51,
     318,   173,    72,   336,    25,   323,    27,    28,   326,   342,
     328,   183,   345,   247,   290,   106,   250,   335,   175,   251,
     111,     3,   355,    48,   115,    48,   117,   360,   346,    65,
      66,    67,    68,     3,   352,   126,   312,   156,   157,   158,
     159,   359,     3,     4,     5,     6,     7,    74,    75,   228,
       3,   223,    49,   225,   152,   153,    75,   333,   334,    46,
     294,   154,   155,   297,   160,   161,    27,    48,   240,    46,
      48,   332,   244,    48,    90,   351,    48,    46,    90,   170,
     314,     3,   173,    49,    76,    47,    47,    77,     3,    77,
      47,    76,    53,    54,    55,    56,    57,    58,    59,    60,
     332,    47,    50,    50,    90,    46,    77,    46,    76,    47,
     344,    24,    77,    76,    50,    47,    77,    77,    77,    48,
      48,    77,   279,    42,   107,    77,   163,   162,   220,    53,
     290,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,    33,   164,    35,    36,    37,    38,    39,    40,   219,
     110,    43,   117,   173,   170,    47,    50,    49,   279,   106,
     124,    53,    54,    55,    56,    57,    58,    59,    60,     8,
       9,    10,    11,    12,   236,    14,    29,    16,   298,    18,
      19,    20,    21,   300,    23,    77,    25,    -1,    -1,    28,
      -1,    -1,    31,    -1,    33,    -1,    35,    -1,    37,    -1,
      39,    40,    -1,    -1,    43,    -1,    -1,    -1,    -1,    -1,
      49,    -1,     8,     9,    10,    11,    12,    -1,    14,    -1,
      16,    -1,    18,    19,    20,    21,    -1,    23,    -1,    25,
      -1,    -1,    28,    -1,    -1,    31,    -1,    33,    -1,    35,
      79,    37,    -1,    39,    40,    -1,    -1,    43,    -1,    -1,
      -1,     3,     4,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,    33,    78,    35,    36,    37,    38,    39,    40,    -1,
      -1,    43,    -1,    -1,    -1,    47,    -1,    49,    -1,    -1,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,     3,
       4,     5,     6,     7,     8,     9,    10,    11,    12,    -1,
      14,    -1,    16,    -1,    18,    19,    20,    21,    -1,    23,
      -1,    25,    -1,    27,    28,    -1,    -1,    31,    -1,    33,
      -1,    35,    -1,    37,    -1,    39,    40,    -1,    -1,    43,
      -1,    -1,    -1,    47,    -1,    -1,    -1,    -1,    -1,    53,
      54,    55,    56,    57,    58,    59,    60,     3,     4,     5,
       6,     7,    -1,    -1,    10,    11,    12,    -1,    -1,    -1,
      16,    -1,    18,    19,    20,    21,    -1,    23,    -1,    25,
      -1,    27,    28,    -1,    -1,    31,    -1,    -1,    -1,    35,
      -1,    37,    -1,    39,    40,    -1,    -1,    -1,    -1,    -1,
      -1,    47,    -1,    -1,    -1,    -1,    -1,    53,    54,    55,
      56,    57,    58,    59,    60,     3,     4,     5,     6,     7,
      -1,    -1,    -1,    -1,    -1,    13,    -1,    15,    -1,    17,
      -1,    -1,    -1,    -1,    22,    -1,    24,    -1,    26,    27,
      -1,    29,    30,    -1,    32,    -1,    -1,    -1,    36,    -1,
      38,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    47,
      -1,    49,    -1,    -1,    -1,    53,    54,    55,    56,    57,
      58,    59,    60,     3,     4,     5,     6,     7,    -1,     9,
      -1,    11,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      20,    -1,    -1,    -1,    -1,    25,    -1,    27,     3,     4,
       5,     6,     7,    -1,     9,    -1,    11,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    20,    -1,    47,    -1,    -1,
      25,    -1,    27,    53,    54,    55,    56,    57,    58,    59,
      60,    -1,     3,     4,     5,     6,     7,    -1,    -1,    -1,
      -1,    -1,    47,    -1,    -1,    -1,    -1,    -1,    53,    54,
      55,    56,    57,    58,    59,    60,    27,     3,     4,     5,
       6,     7,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     3,     4,     5,     6,     7,    47,    -1,    49,    -1,
      -1,    27,    53,    54,    55,    56,    57,    58,    59,    60,
      -1,    -1,    -1,    -1,    -1,    27,     3,     4,     5,     6,
       7,    47,    -1,    49,    -1,    -1,    -1,    53,    54,    55,
      56,    57,    58,    59,    60,    47,    -1,    -1,    -1,    -1,
      27,    53,    54,    55,    56,    57,    58,    59,    60,    -1,
       3,     4,     5,     6,     7,    -1,    -1,    -1,    -1,    -1,
      47,    -1,    -1,    -1,    -1,    -1,    53,    54,    55,    56,
      57,    58,    59,    60,    27,    79,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    89,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    47,    -1,    -1,    -1,    -1,    -1,
      53,    54,    55,    56,    57,    58,    59,    60,     0,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,     8,     9,    10,    11,
      12,    -1,    14,    -1,    16,    -1,    18,    19,    20,    21,
      -1,    23,    -1,    25,    -1,    -1,    28,    -1,    -1,    31,
      -1,    33,    -1,    35,    -1,    37,    -1,    39,    40,    -1,
      -1,    43,     8,     9,    10,    11,    12,    -1,    14,    -1,
      16,    -1,    18,    19,    20,    21,    -1,    23,    -1,    25,
      -1,    -1,    28,    -1,    -1,    31,    -1,    33,    -1,    35,
      -1,    37,    -1,    39,    40,    -1,    -1,    43,    -1,    -1,
      -1,    -1,    48,     8,     9,    10,    11,    12,    -1,    14,
      -1,    16,    -1,    18,    19,    20,    21,    -1,    23,    -1,
      25,    -1,    -1,    28,    -1,    -1,    31,    -1,    33,    -1,
      35,    -1,    37,    -1,    39,    40,    -1,    -1,    43,    10,
      11,    12,    -1,    -1,    -1,    16,    -1,    18,    19,    20,
      21,    -1,    23,    -1,    25,    -1,    -1,    28,    -1,    -1,
      31,    -1,    -1,    -1,    35,    -1,    37,    -1,    39,    40
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     8,     9,    10,    11,    12,    14,    16,    18,    19,
      20,    21,    23,    25,    28,    31,    33,    35,    37,    39,
      40,    43,   122,   124,   128,   129,   132,   136,   137,   167,
     168,   169,     3,   133,    56,   123,   126,   127,   138,   139,
     143,   124,   125,   125,   125,   125,     0,   168,    49,   136,
     141,   144,    77,    90,    79,   122,   124,   170,   171,     3,
      47,   140,     3,   134,   135,   143,   136,   127,   138,     3,
       4,     5,     6,     7,    27,    47,    49,    53,    54,    55,
      56,    57,    58,    59,    60,   100,   101,   104,   105,   106,
     107,   108,   109,   110,   111,   112,   113,   114,   115,   116,
     117,   118,   150,    97,   122,   138,    45,    47,    79,    50,
      90,    47,   104,   118,   120,   129,   130,   136,   149,    45,
      51,   151,   152,   153,   154,   155,    47,   104,   104,    45,
      47,    51,    52,    53,    54,    79,    80,    81,    82,    83,
      84,    85,    86,    87,    88,    89,   119,   104,   106,    56,
      61,    62,    57,    58,    63,    64,    65,    66,    67,    68,
      69,    70,    55,    71,    72,    73,    74,    96,    98,    48,
       9,   118,   142,   144,     3,    97,   148,   117,   121,    50,
     135,   149,    48,    90,   130,   131,   131,    48,   121,     3,
      50,    90,   150,    79,   155,   149,   120,   102,   103,   118,
       3,     3,   118,   106,   106,   106,   107,   107,   108,   108,
     109,   109,   109,   109,   110,   110,   111,   112,   113,    95,
      95,    75,    49,   141,    46,     9,   142,    48,   124,   145,
     146,   147,    48,    90,    48,   118,    49,   106,    46,    50,
     152,    48,    46,    48,    90,   114,   115,    95,     3,    13,
      15,    17,    22,    24,    26,    29,    30,    32,    36,    38,
      49,   120,   122,   156,   157,   158,   159,   160,   161,   162,
     163,   164,   165,   166,   118,   118,    46,   138,    48,    90,
       3,   151,   150,   118,   120,    76,    77,    77,   120,   121,
      47,    95,     3,    77,    47,    76,    95,    47,    99,    50,
      95,    77,    46,    46,    78,   147,    50,    90,    96,   156,
      77,    76,   122,   163,    47,    77,   120,   156,   156,   120,
     159,   161,    50,    76,   156,   163,    77,   120,    48,    95,
      48,    50,    95,    77,    95,    48,    95,    24,   156,   117,
     163,   163,    95,   156,    47,    48,    77,   156,    96,   120,
     156,    95,    42,    48,   163,    95,    77,    96,   156,    48,
      95,   156
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    94,    95,    96,    97,    98,    99,   100,   100,   100,
     100,   100,   100,   101,   101,   101,   101,   101,   101,   101,
     101,   101,   102,   102,   103,   103,   104,   104,   104,   104,
     104,   104,   105,   105,   105,   105,   105,   105,   106,   106,
     107,   107,   107,   107,   108,   108,   108,   109,   109,   109,
     110,   110,   110,   110,   110,   111,   111,   111,   112,   112,
     113,   113,   114,   114,   115,   115,   116,   116,   117,   117,
     118,   118,   119,   119,   119,   119,   119,   119,   119,   119,
     119,   119,   119,   120,   120,   121,   122,   123,   123,   124,
     124,   124,   124,   125,   125,   126,   126,   127,   127,   128,
     128,   128,   128,   129,   129,   129,   129,   129,   129,   129,
     129,   129,   129,   129,   129,   129,   130,   130,   131,   131,
     132,   132,   132,   133,   133,   134,   134,   135,   135,   136,
     136,   136,   137,   138,   139,   139,   140,   140,   140,   140,
     140,   140,   140,   140,   140,   141,   141,   142,   142,   143,
     143,   144,   144,   145,   145,   146,   146,   147,   147,   148,
     148,   149,   150,   150,   150,   151,   151,   152,   152,   153,
     154,   154,   155,   155,   156,   156,   156,   156,   156,   156,
     157,   157,   157,   158,   159,   159,   160,   160,   161,   161,
     162,   163,   163,   164,   164,   164,   165,   165,   165,   165,
     166,   166,   166,   166,   166,   167,   167,   168,   168,   169,
     170,   170,   171,   171
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     0,     0,     0,     0,     1,     1,     1,
       1,     1,     3,     1,     4,     4,     3,     3,     2,     2,
       6,     7,     1,     0,     1,     3,     1,     2,     2,     2,
       2,     4,     1,     1,     1,     1,     1,     1,     1,     4,
       1,     3,     3,     3,     1,     3,     3,     1,     3,     3,
       1,     3,     3,     3,     3,     1,     3,     3,     1,     3,
       1,     3,     1,     3,     1,     4,     1,     4,     1,     9,
       1,     3,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     3,     1,     3,     1,     0,     2,
       2,     2,     2,     1,     0,     1,     3,     1,     3,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     2,     1,     0,
       5,     6,     2,     1,     0,     1,     3,     1,     3,     1,
       1,     1,     1,     2,     1,     0,     1,     3,     5,     4,
       6,     6,     5,     4,     4,     1,     0,     1,     0,     2,
       3,     1,     2,     1,     3,     1,     3,     2,     1,     1,
       3,     1,     1,     3,     4,     2,     4,     1,     0,     2,
       1,     2,     3,     2,     1,     1,     1,     1,     1,     1,
       3,     4,     3,     4,     1,     0,     1,     3,     1,     1,
       2,     1,     0,     7,    10,     5,     7,     9,    13,     8,
       3,     2,     2,     3,     2,     1,     2,     1,     1,     8,
       1,     0,     1,     2
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* marker_M: %empty  */
#line 238 "ass6_20CS10065_20CS30004_parser.y"
            {(yyval.int_attr) = nextinstr; /*used for backpatching*/ }
#line 1675 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 3: /* guard_N: %empty  */
#line 242 "ass6_20CS10065_20CS30004_parser.y"
            {
                (yyval.expr) = new expression;
                (yyval.expr) -> nextlist = makelist(nextinstr);
                emit("???", "", "goto");
            }
#line 1685 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 4: /* enter_func: %empty  */
#line 253 "ass6_20CS10065_20CS30004_parser.y"
              {
                  if(curr_sym -> nested_table){
                      curr_table = curr_sym -> nested_table;
                  }else{
                      curr_table = new symbol_table("", curr_table);
                  }
              }
#line 1697 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 5: /* create_label: %empty  */
#line 264 "ass6_20CS10065_20CS30004_parser.y"
                { emit(curr_sym -> nested_table -> ST_name.substr(3), "", "label");}
#line 1703 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 6: /* enter_block: %empty  */
#line 268 "ass6_20CS10065_20CS30004_parser.y"
              {
                  string new_st_name = curr_table -> ST_name + "_b" + to_string(table_count);
                  symbol * new_block_id = curr_sym = curr_table -> lookup(new_st_name);
                  curr_table = new_block_id -> nested_table = new symbol_table(new_st_name, curr_table);
                  emit(curr_table -> ST_name.substr(3), "", "label_block");
              }
#line 1714 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 7: /* primary_expression: IDENTIFIER  */
#line 285 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = (yyvsp[0].sym_ptr);
                      }
#line 1723 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 8: /* primary_expression: INTEGER_CONSTANT  */
#line 290 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = curr_table -> gentemp("int");
                          (yyval.expr) -> sym -> init_val = (yyvsp[0].str_attr);
                          emit((yyval.expr) -> sym -> name, (yyvsp[0].str_attr));
                      }
#line 1734 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 9: /* primary_expression: FLOATING_CONSTANT  */
#line 297 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = curr_table -> gentemp("float");
                          (yyval.expr) -> sym -> init_val = (yyvsp[0].str_attr);
                          emit((yyval.expr) -> sym -> name, (yyvsp[0].str_attr));
                      }
#line 1745 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 10: /* primary_expression: CHARACTER_CONSTANT  */
#line 304 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = curr_table -> gentemp("char");
                          (yyval.expr) -> sym -> init_val = (yyvsp[0].str_attr);
                          emit((yyval.expr) -> sym -> name, (yyvsp[0].str_attr));
                      }
#line 1756 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 11: /* primary_expression: STRING_LITERAL  */
#line 311 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = curr_table -> gentemp("char*");
                          (yyval.expr) -> sym -> init_val = (yyvsp[0].str_attr);
                          emit((yyval.expr) -> sym -> name, to_string(string_constants.size()), "=str");
                          string_constants.push_back((yyvsp[0].str_attr));
                      }
#line 1768 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 12: /* primary_expression: LF_PRNTH expression RT_PRNTH  */
#line 319 "ass6_20CS10065_20CS30004_parser.y"
                      { (yyval.expr) = (yyvsp[-1].expr);}
#line 1774 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 13: /* postfix_expression: primary_expression  */
#line 323 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.arr) = new array_info;
                          (yyval.arr) -> sym = (yyval.arr) -> ptr_base = (yyvsp[0].expr) -> sym;
                          (yyval.arr) -> type = (yyvsp[0].expr) -> sym ? (yyvsp[0].expr) -> sym -> type : "int"; // we keep implicit bool type objects as int
                          (yyval.arr) -> truelist = (yyvsp[0].expr) -> truelist;
                          (yyval.arr) -> nextlist = (yyvsp[0].expr) -> nextlist;
                          (yyval.arr) -> falselist = (yyvsp[0].expr) -> falselist;
                      }
#line 1787 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 14: /* postfix_expression: postfix_expression LF_SQBR expression RT_SQBR  */
#line 332 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.arr) = new array_info;
                          (yyval.arr) -> sym = (yyval.arr) -> ptr_base = (yyvsp[-3].arr) -> sym;
                          if((yyvsp[-3].arr) -> type[0] != 'a'){
                              yyerror("cannot perform operation of the type non_array[expr]\n");
                          }

                          int commaindex = 6;
                          while((yyvsp[-3].arr) -> type[commaindex++] != ',');
                          int sz = get_size((yyval.arr) -> type = (yyvsp[-3].arr) -> type.substr(commaindex + 1, ((yyvsp[-3].arr) -> type.size() - 1 - 1) - (commaindex + 1) + 1));
                          (yyval.arr) -> offset_tempvar = curr_table -> gentemp("int");
                          if((yyvsp[-3].arr) -> type != (yyval.arr) -> sym -> type){ // not the first dimension
                              symbol * t = curr_table -> gentemp("int");
                              emit(t -> name, (yyvsp[-1].expr) -> sym -> name, "*", to_string(sz)); // size = previous_size * dimension
                              emit((yyval.arr) -> offset_tempvar -> name, (yyvsp[-3].arr) -> offset_tempvar -> name, "+", t -> name);
                          }else{ // the first dimension
                              emit((yyval.arr) -> offset_tempvar -> name, (yyvsp[-1].expr) -> sym -> name, "*", to_string(sz));
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
#line 1825 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 15: /* postfix_expression: postfix_expression LF_PRNTH argument_expression_list_opt RT_PRNTH  */
#line 366 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.arr) = new array_info;
                          (yyval.arr) -> sym =  (yyval.arr) -> ptr_base = curr_table -> gentemp((yyvsp[-3].arr) -> sym -> type);
                          (yyval.arr) -> type = (yyvsp[-3].arr) -> type;
                          for(string par : *((yyvsp[-1].str_vec))){
                              emit("", par, "param");
                          }
                          emit((yyval.arr) -> sym -> type == "void" ? "" : (yyval.arr) -> sym -> name, (yyvsp[-3].arr) -> sym -> name, "call", to_string((yyvsp[-1].str_vec) -> size()));
                      }
#line 1839 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 16: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 375 "ass6_20CS10065_20CS30004_parser.y"
                                                        {}
#line 1845 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 17: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 376 "ass6_20CS10065_20CS30004_parser.y"
                                                        {}
#line 1851 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 18: /* postfix_expression: postfix_expression PLUS_PLUS  */
#line 378 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.arr) = new array_info;
                          // postfix increment, we need a temporary variable to remember pre-increment value
                          (yyval.arr) -> sym =  (yyval.arr) -> ptr_base = curr_table -> gentemp((yyvsp[-1].arr) -> sym -> type);
                          (yyval.arr) -> type = (yyval.arr) -> sym -> type;
                          emit((yyval.arr) -> sym -> name, (yyvsp[-1].arr) -> sym -> name);

                          //increment the original number
                          emit((yyvsp[-1].arr) -> sym -> name, (yyvsp[-1].arr) -> sym -> name, "+", "1");
                      }
#line 1866 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 19: /* postfix_expression: postfix_expression MINUS_MINUS  */
#line 389 "ass6_20CS10065_20CS30004_parser.y"
                      {   
                          (yyval.arr) = new array_info;
                          // postfix decrement, we need a temporary variable to remember pre-decrement value
                          (yyval.arr) -> sym =  (yyval.arr) -> ptr_base = curr_table -> gentemp((yyvsp[-1].arr) -> sym -> type);
                          emit((yyval.arr) -> sym -> name, (yyvsp[-1].arr) -> sym -> name);

                          //decrement the original number
                          emit((yyvsp[-1].arr) -> sym -> name, (yyvsp[-1].arr) -> sym -> name, "-", "1");
                      }
#line 1880 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 20: /* postfix_expression: LF_PRNTH type_name RT_PRNTH LF_BRACE initializer_list RT_BRACE  */
#line 398 "ass6_20CS10065_20CS30004_parser.y"
                                                                                          {}
#line 1886 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 21: /* postfix_expression: LF_PRNTH type_name RT_PRNTH LF_BRACE initializer_list COMMA RT_BRACE  */
#line 399 "ass6_20CS10065_20CS30004_parser.y"
                                                                                          {}
#line 1892 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 23: /* argument_expression_list_opt: %empty  */
#line 404 "ass6_20CS10065_20CS30004_parser.y"
                                { (yyval.str_vec) = new string_vector; /* no parameters*/}
#line 1898 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 24: /* argument_expression_list: assignment_expression  */
#line 408 "ass6_20CS10065_20CS30004_parser.y"
                            {
                                (yyval.str_vec) = new string_vector;
                                (yyval.str_vec) -> push_back((yyvsp[0].expr) -> sym -> name);
                            }
#line 1907 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 25: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 413 "ass6_20CS10065_20CS30004_parser.y"
                            {
                                (yyval.str_vec) -> push_back((yyvsp[0].expr) -> sym -> name);
                            }
#line 1915 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 27: /* unary_expression: PLUS_PLUS unary_expression  */
#line 420 "ass6_20CS10065_20CS30004_parser.y"
                    {   
                        (yyval.arr) = (yyvsp[0].arr);
                        // prefix increment, no such temporary variable needed
                        //increment the original number
                        emit((yyvsp[0].arr) -> sym -> name, (yyvsp[0].arr) -> sym -> name, "+", "1");
                    }
#line 1926 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 28: /* unary_expression: MINUS_MINUS unary_expression  */
#line 427 "ass6_20CS10065_20CS30004_parser.y"
                    {   
                        (yyval.arr) = (yyvsp[0].arr);
                        // prefix decrement, no such temporary variable needed
                        //decrement the original number
                        emit((yyvsp[0].arr) -> sym -> name, (yyvsp[0].arr) -> sym -> name, "-", "1");
                    }
#line 1937 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 29: /* unary_expression: unary_operator cast_expression  */
#line 434 "ass6_20CS10065_20CS30004_parser.y"
                    {
                          switch((yyvsp[-1].str_attr)[0]){
                              case '+':
                                        (yyval.arr) = (yyvsp[0].arr);
                                        break;
                              case '*':
                                        (yyval.arr) = new array_info;
                                        (yyval.arr) -> type = (yyvsp[0].arr) -> type;
                                        (yyval.arr) -> is_ptr = true;
                                        (yyval.arr) -> ptr_base = (yyvsp[0].arr) -> sym;
                                        if((yyvsp[0].arr) -> type.back() != '*'){
                                            yyerror("attempt to dereference a non_pointer");
                                        }
                                        (yyval.arr) -> type.pop_back(); // removing one level of "pointer-ness"
                                        (yyval.arr) -> sym = curr_table -> gentemp((yyval.arr) -> type);
                                        emit((yyval.arr) -> sym -> name,  (yyvsp[0].arr) -> sym -> name, "=*");
                                        break;
                              case '&':
                                        (yyval.arr) = new array_info;
                                        (yyval.arr) -> type = (yyvsp[0].arr) -> type + "*";
                                        (yyval.arr) -> sym = (yyval.arr) -> ptr_base = curr_table -> gentemp((yyval.arr) -> type);
                                        emit((yyval.arr) -> sym -> name, (yyvsp[0].arr) -> sym -> name, "=&");
                                        break;
                              default:
                                        (yyval.arr) = new array_info;
                                        (yyval.arr) -> sym = (yyval.arr) -> ptr_base = curr_table -> gentemp((yyvsp[0].arr) -> type);
                                        emit((yyval.arr) -> sym -> name, (yyvsp[0].arr) -> sym -> name, (yyvsp[-1].str_attr));
                                        break;
                          }
                    }
#line 1972 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 30: /* unary_expression: SIZEOF unary_expression  */
#line 464 "ass6_20CS10065_20CS30004_parser.y"
                                                      {}
#line 1978 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 31: /* unary_expression: SIZEOF LF_PRNTH type_name RT_PRNTH  */
#line 465 "ass6_20CS10065_20CS30004_parser.y"
                                                      {}
#line 1984 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 32: /* unary_operator: AMPRSND  */
#line 469 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("&"); }
#line 1990 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 33: /* unary_operator: ASTERIX  */
#line 471 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("*"); }
#line 1996 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 34: /* unary_operator: PLUS  */
#line 473 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("+"); }
#line 2002 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 35: /* unary_operator: MINUS  */
#line 475 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("-"); }
#line 2008 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 36: /* unary_operator: TILDE  */
#line 477 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("~"); }
#line 2014 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 37: /* unary_operator: EXCLAIM  */
#line 479 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("!"); }
#line 2020 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 39: /* cast_expression: LF_PRNTH type_name RT_PRNTH cast_expression  */
#line 484 "ass6_20CS10065_20CS30004_parser.y"
                    {   
                        (yyval.arr) = new array_info;
                        if(!typecheck((yyvsp[-2].str_attr), (yyvsp[0].arr) -> sym)){
                            yyerror("type mismatch (cast_expression) " + string((yyvsp[-2].str_attr)) + " and " + (yyvsp[0].arr) -> sym -> type);
                        }
                        (yyval.arr) -> sym = convert((yyvsp[0].arr) -> sym -> type, (yyvsp[-2].str_attr), (yyvsp[0].arr) -> sym);
                    }
#line 2032 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 40: /* multiplicative_expression: cast_expression  */
#line 494 "ass6_20CS10065_20CS30004_parser.y"
                              {
                                  (yyval.expr) = new expression;
                                  if((yyvsp[0].arr) -> sym && (yyvsp[0].arr) -> sym -> type[0] == 'a'){
                                      (yyval.expr) -> sym = curr_table -> gentemp((yyvsp[0].arr) -> type);
                                      emit((yyval.expr) -> sym -> name, (yyvsp[0].arr) -> sym -> name, "=[]", (yyvsp[0].arr) -> offset_tempvar -> name);
                                  }else{
                                      (yyval.expr) -> sym = (yyvsp[0].arr) -> sym;
                                  }
                                  (yyval.expr) -> truelist = (yyvsp[0].arr) -> truelist;
                                  (yyval.expr) -> nextlist = (yyvsp[0].arr) -> nextlist;
                                  (yyval.expr) -> falselist = (yyvsp[0].arr) -> falselist;
                              }
#line 2049 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 41: /* multiplicative_expression: multiplicative_expression ASTERIX cast_expression  */
#line 507 "ass6_20CS10065_20CS30004_parser.y"
                              {
                                  (yyval.expr) = new expression;
                                  symbol * t, * t2;
                                  if((yyvsp[0].arr) -> sym -> type[0] == 'a'){
                                      t = curr_table -> gentemp((yyvsp[0].arr) -> type);
                                      emit(t -> name, (yyvsp[0].arr) -> sym -> name, "=[]", (yyvsp[0].arr) -> offset_tempvar -> name);
                                  }else{
                                      t = (yyvsp[0].arr) -> sym;
                                  }
                                  if(!typecheck((yyvsp[-2].expr) -> sym, t)){
                                      yyerror("type mismatch (expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + t -> type);
                                  }

                                  if(t -> size > (yyvsp[-2].expr) -> sym -> size){
                                      t2 = convert((yyvsp[-2].expr) -> sym -> type, t -> type, (yyvsp[-2].expr) -> sym);
                                      (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                                      emit((yyval.expr) -> sym -> name, t2 -> name, "*", t -> name);
                                  }else{
                                      t2 = convert(t -> type, (yyvsp[-2].expr) -> sym -> type, t);
                                      (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                                      emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, "*", t2 -> name);
                                  }

                              }
#line 2078 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 42: /* multiplicative_expression: multiplicative_expression SLASH cast_expression  */
#line 532 "ass6_20CS10065_20CS30004_parser.y"
                              {
                                  (yyval.expr) = new expression;
                                  symbol * t, * t2;
                                  if((yyvsp[0].arr) -> sym -> type[0] == 'a'){
                                      t = curr_table -> gentemp((yyvsp[0].arr) -> type);
                                      emit(t -> name, (yyvsp[0].arr) -> sym -> name, "=[]", (yyvsp[0].arr) -> offset_tempvar -> name);
                                  }else{
                                      t = (yyvsp[0].arr) -> sym;
                                  }
                                  if(!typecheck((yyvsp[-2].expr) -> sym, t)){
                                      yyerror("type mismatch (expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + t -> type);
                                  }

                                  if(t -> size > (yyvsp[-2].expr) -> sym -> size){
                                      t2 = convert((yyvsp[-2].expr) -> sym -> type, t -> type, (yyvsp[-2].expr) -> sym);
                                      (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                                      emit((yyval.expr) -> sym -> name, t2 -> name, "/", t -> name);
                                  }else{
                                      t2 = convert(t -> type, (yyvsp[-2].expr) -> sym -> type, t);
                                      (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                                      emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, "/", t2 -> name);
                                  }
                                  
                              }
#line 2107 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 43: /* multiplicative_expression: multiplicative_expression PRCNT cast_expression  */
#line 557 "ass6_20CS10065_20CS30004_parser.y"
                              {
                                  (yyval.expr) = new expression;
                                  symbol * t, * t2;
                                  if((yyvsp[0].arr) -> sym -> type[0] == 'a'){
                                      t = curr_table -> gentemp((yyvsp[0].arr) -> type);
                                      emit(t -> name, (yyvsp[0].arr) -> sym -> name, "=[]", (yyvsp[0].arr) -> offset_tempvar -> name);
                                  }else{
                                      t = (yyvsp[0].arr) -> sym;
                                  }
                                  if(!typecheck((yyvsp[-2].expr) -> sym, t)){
                                      yyerror("type mismatch (relational_expression) :  , $1 -> sym -> type + (expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + t -> type);
                                  }

                                  if(t -> size > (yyvsp[-2].expr) -> sym -> size){
                                      t2 = convert((yyvsp[-2].expr) -> sym -> type, t -> type, (yyvsp[-2].expr) -> sym);
                                      (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                                      emit((yyval.expr) -> sym -> name, t2 -> name, "%", t -> name);
                                  }else{
                                      t2 = convert(t -> type, (yyvsp[-2].expr) -> sym -> type, t);
                                      (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                                      emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, "%", t2 -> name);
                                  }
                                  
                              }
#line 2136 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 45: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 585 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          symbol * t2;

                          if((yyvsp[0].expr) -> sym -> size > (yyvsp[-2].expr) -> sym -> size){
                              t2 = convert((yyvsp[-2].expr) -> sym -> type, (yyvsp[0].expr) -> sym -> type, (yyvsp[-2].expr) -> sym);
                              (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                              emit((yyval.expr) -> sym -> name, t2 -> name, "+", (yyvsp[0].expr) -> sym -> name);
                          }else{
                              t2 = convert((yyvsp[0].expr) -> sym -> type, (yyvsp[-2].expr) -> sym -> type, (yyvsp[0].expr) -> sym);
                              (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                              emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, "+", t2 -> name);
                          }
                          
                      }
#line 2156 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 46: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 601 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          symbol * t2;

                          if((yyvsp[0].expr) -> sym -> size > (yyvsp[-2].expr) -> sym -> size){
                              t2 = convert((yyvsp[-2].expr) -> sym -> type, (yyvsp[0].expr) -> sym -> type, (yyvsp[-2].expr) -> sym);
                              (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                              emit((yyval.expr) -> sym -> name, t2 -> name, "-", (yyvsp[0].expr) -> sym -> name);
                          }else{
                              t2 = convert((yyvsp[0].expr) -> sym -> type, (yyvsp[-2].expr) -> sym -> type, (yyvsp[0].expr) -> sym);
                              (yyval.expr) -> sym = curr_table -> gentemp(t2 -> type);
                              emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, "-", t2 -> name);
                          }
                          
                      }
#line 2176 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 48: /* shift_expression: shift_expression L_SHFT additive_expression  */
#line 620 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = curr_table -> gentemp((yyvsp[-2].expr) -> sym -> type);
                          emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, "<<", (yyvsp[0].expr) -> sym -> name);
                      }
#line 2186 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 49: /* shift_expression: shift_expression R_SHFT additive_expression  */
#line 626 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.expr) = new expression;
                          (yyval.expr) -> sym = curr_table -> gentemp((yyvsp[-2].expr) -> sym -> type);
                          emit((yyval.expr) -> sym -> name, (yyvsp[-2].expr) -> sym -> name, ">>", (yyvsp[0].expr) -> sym -> name);
                      }
#line 2196 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 51: /* relational_expression: relational_expression LESS_TH shift_expression  */
#line 635 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              if(!typecheck((yyvsp[-2].expr) -> sym, (yyvsp[0].expr) -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + (yyvsp[0].expr) -> sym -> type);
                              }
                              (yyval.expr) = new expression;

                              (yyval.expr) -> truelist = makelist(nextinstr);
                              emit("???", (yyvsp[-2].expr) -> sym -> name, "<", (yyvsp[0].expr) -> sym -> name);
                              
                              (yyval.expr) -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
#line 2213 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 52: /* relational_expression: relational_expression MORE_TH shift_expression  */
#line 648 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              if(!typecheck((yyvsp[-2].expr) -> sym, (yyvsp[0].expr) -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + (yyvsp[0].expr) -> sym -> type);
                              }
                              (yyval.expr) = new expression;

                              (yyval.expr) -> truelist = makelist(nextinstr);
                              emit("???", (yyvsp[-2].expr) -> sym -> name, ">", (yyvsp[0].expr) -> sym -> name);
                              
                              (yyval.expr) -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
#line 2230 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 53: /* relational_expression: relational_expression LESS_EQ shift_expression  */
#line 661 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              if(!typecheck((yyvsp[-2].expr) -> sym, (yyvsp[0].expr) -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + (yyvsp[0].expr) -> sym -> type);
                              }
                              (yyval.expr) = new expression;

                              (yyval.expr) -> truelist = makelist(nextinstr);
                              emit("???", (yyvsp[-2].expr) -> sym -> name, "<=", (yyvsp[0].expr) -> sym -> name);
                              
                              (yyval.expr) -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
#line 2247 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 54: /* relational_expression: relational_expression MORE_EQ shift_expression  */
#line 674 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              if(!typecheck((yyvsp[-2].expr) -> sym, (yyvsp[0].expr) -> sym)){
                                  yyerror("type mismatch (relational_expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + (yyvsp[0].expr) -> sym -> type);
                              }
                              (yyval.expr) = new expression;

                              (yyval.expr) -> truelist = makelist(nextinstr);
                              emit("???", (yyvsp[-2].expr) -> sym -> name, ">=", (yyvsp[0].expr) -> sym -> name);
                              
                              (yyval.expr) -> falselist = makelist(nextinstr);
                              emit("???", "", "goto");
                          }
#line 2264 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 56: /* equality_expression: equality_expression EQ_EQ relational_expression  */
#line 690 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            if(!typecheck((yyvsp[-2].expr) -> sym, (yyvsp[0].expr) -> sym)){
                                  yyerror("type mismatch (equality_expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + (yyvsp[0].expr) -> sym -> type);
                            }
                            (yyval.expr) = new expression;

                            (yyval.expr) -> truelist = makelist(nextinstr);
                            emit("???", (yyvsp[-2].expr) -> sym -> name, "==", (yyvsp[0].expr) -> sym -> name);
                            
                            (yyval.expr) -> falselist = makelist(nextinstr);
                            emit("???", "", "goto");
                        }
#line 2281 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 57: /* equality_expression: equality_expression NOT_EQ relational_expression  */
#line 703 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            if(!typecheck((yyvsp[-2].expr) -> sym, (yyvsp[0].expr) -> sym)){
                                  yyerror("type mismatch (equality_expression) : " + (yyvsp[-2].expr) -> sym -> type + " and " + (yyvsp[0].expr) -> sym -> type);
                            }
                            (yyval.expr) = new expression;

                            (yyval.expr) -> truelist = makelist(nextinstr);
                            emit("???", (yyvsp[-2].expr) -> sym -> name, "!=", (yyvsp[0].expr) -> sym -> name);
                            
                            (yyval.expr) -> falselist = makelist(nextinstr);
                            emit("???", "", "goto");
                        }
#line 2298 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 59: /* AND_expression: AND_expression AMPRSND equality_expression  */
#line 719 "ass6_20CS10065_20CS30004_parser.y"
                  {
                      (yyval.expr) = new expression;
                      symbol * a1 = convert((yyvsp[-2].expr) -> sym -> type, "int", (yyvsp[-2].expr) -> sym);
                      symbol * a3 = convert((yyvsp[0].expr) -> sym -> type, "int", (yyvsp[0].expr) -> sym);
                      (yyval.expr) -> sym = curr_table -> gentemp("int");
                      emit((yyval.expr) -> sym -> name, a1 -> name, "&", a3 -> name);
                  }
#line 2310 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 61: /* exclusive_OR_expression: exclusive_OR_expression CAP AND_expression  */
#line 730 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              (yyval.expr) = new expression;
                              symbol * a1 = convert((yyvsp[-2].expr) -> sym -> type, "int", (yyvsp[-2].expr) -> sym);
                              symbol * a3 = convert((yyvsp[0].expr) -> sym -> type, "int", (yyvsp[0].expr) -> sym);
                              (yyval.expr) -> sym = curr_table -> gentemp("int");
                              emit((yyval.expr) -> sym -> name, a1 -> name, "^", a3 -> name);
                          }
#line 2322 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 63: /* inclusive_OR_expression: inclusive_OR_expression PIPE exclusive_OR_expression  */
#line 741 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              (yyval.expr) = new expression;
                              symbol * a1 = convert((yyvsp[-2].expr) -> sym -> type, "int", (yyvsp[-2].expr) -> sym);
                              symbol * a3 = convert((yyvsp[0].expr) -> sym -> type, "int", (yyvsp[0].expr) -> sym);
                              (yyval.expr) -> sym = curr_table -> gentemp("int");
                              emit((yyval.expr) -> sym -> name, a1 -> name, "|", a3 -> name);
                          }
#line 2334 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 65: /* logical_AND_expression: logical_AND_expression AND_AND marker_M inclusive_OR_expression  */
#line 752 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              (yyval.expr) = new expression;
                              backpatch((yyvsp[-3].expr) -> truelist, (yyvsp[-1].int_attr));
                              (yyval.expr) -> truelist = (yyvsp[0].expr) -> truelist;
                              (yyval.expr) -> falselist = merge((yyvsp[-3].expr) -> falselist, (yyvsp[0].expr) -> falselist);
                          }
#line 2345 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 67: /* logical_OR_expression: logical_OR_expression OR_OR marker_M logical_AND_expression  */
#line 762 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              (yyval.expr) = new expression;
                              backpatch((yyvsp[-3].expr) -> falselist, (yyvsp[-1].int_attr));
                              (yyval.expr) -> falselist = (yyvsp[0].expr) -> falselist;
                              (yyval.expr) -> truelist = merge((yyvsp[-3].expr) -> truelist, (yyvsp[0].expr) -> truelist);
                          }
#line 2356 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 69: /* conditional_expression: logical_OR_expression guard_N Q_MARK marker_M expression guard_N COLON marker_M conditional_expression  */
#line 772 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              (yyval.expr) = new expression;
                              (yyval.expr) -> sym = curr_table -> gentemp((yyvsp[-4].expr) -> sym -> type);
                              emit((yyval.expr) -> sym -> name, (yyvsp[0].expr) -> sym -> name);
                              vector<int> I = makelist(nextinstr);
                              emit("???", "", "goto");
                              backpatch((yyvsp[-3].expr) -> nextlist, nextinstr);

                              emit((yyval.expr) -> sym -> name, (yyvsp[-4].expr) -> sym -> name);
                              I = merge(I, makelist(nextinstr));
                              emit("???", "", "goto");
                              backpatch((yyvsp[-7].expr) -> nextlist, nextinstr);

                              backpatch((yyvsp[-8].expr) -> truelist, (yyvsp[-5].int_attr));
                              backpatch((yyvsp[-8].expr) -> falselist, (yyvsp[-1].int_attr));


                              backpatch(I, nextinstr);
                          }
#line 2380 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 71: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 795 "ass6_20CS10065_20CS30004_parser.y"
                          {
                              (yyval.expr) = (yyvsp[0].expr);
                              // cerr << "\n\n\n\n **************************************************************** " << $3 -> sym -> name << " of " << $3 -> sym -> belonging_table -> ST_name << " to " << $1 -> sym -> name << " of table " << $1 -> sym -> belonging_table -> ST_name << "********\n\n";  
                              // cerr << "\n\n\n\n **************************************************************** " << $3 -> sym -> type << " to " << $1 -> sym -> type << " ********\n\n";  
                              if((yyvsp[-2].arr) -> sym -> type[0] == 'a'){
                                  typecheck((yyvsp[-2].arr) -> sym, (yyvsp[0].expr) -> sym);
                                  symbol * t = convert((yyvsp[0].expr) -> sym -> type, (yyvsp[-2].arr) -> type, (yyvsp[0].expr) -> sym);
                                  emit((yyvsp[-2].arr) -> sym -> name, (yyvsp[-2].arr) -> offset_tempvar -> name, "[]=", (yyvsp[0].expr) -> sym -> name);
                                  (yyval.expr) -> sym = t;
                              }else if((yyvsp[-2].arr) -> is_ptr){
                                  emit((yyvsp[-2].arr) -> ptr_base -> name, (yyvsp[0].expr) -> sym -> name, "*=");
                              }else if(typecheck((yyvsp[-2].arr) -> sym, (yyvsp[0].expr) -> sym)){
                                  if(!typecheck((yyvsp[-2].arr) -> sym, (yyvsp[0].expr) -> sym)){
                                      yyerror("type mismatch (assignment_expression)");
                                  }
                                  symbol * t = convert((yyvsp[0].expr) -> sym -> type, (yyvsp[-2].arr) -> sym -> type, (yyvsp[0].expr) -> sym);
                                  emit((yyvsp[-2].arr) -> sym -> name, t -> name);
                                  (yyval.expr) -> sym = t;
                              }else{
                                  yyerror("type mismatch(Assignment)");
                              }
                          }
#line 2407 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 84: /* expression: expression COMMA assignment_expression  */
#line 833 "ass6_20CS10065_20CS30004_parser.y"
                                                   {}
#line 2413 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 98: /* init_declarator: declarator EQ initializer  */
#line 864 "ass6_20CS10065_20CS30004_parser.y"
                    {
                        (yyval.sym_ptr) = (yyvsp[-2].sym_ptr);
                        if((yyvsp[0].sym_ptr) -> init_val != ""){
                            // cerr << "\n\n\n\n\n\n ************************ HERE WE HAVE " << $1 << ", " << $3 << " ******\n\n\n";
                            // cerr << "\n\n\n\n\n\n ************************ WITH " << $1 -> name << ", " ;
                            // cerr << $3 -> name << " ******\n\n\n";
                            (yyvsp[-2].sym_ptr) -> init_val = (yyvsp[0].sym_ptr) -> init_val;
                            emit((yyvsp[-2].sym_ptr) -> name, (yyvsp[0].sym_ptr) -> name);
                        }else{
                            if(!typecheck((yyvsp[-2].sym_ptr), (yyvsp[0].sym_ptr))){
                                yyerror("type mismatch (" + (yyvsp[-2].sym_ptr) -> type + ", " + (yyvsp[0].sym_ptr) -> type + ")");
                            }
                            symbol * t = convert((yyvsp[0].sym_ptr) -> type, (yyvsp[-2].sym_ptr) -> type, (yyvsp[0].sym_ptr)); 
                            emit((yyvsp[-2].sym_ptr) -> name, t -> name);
                        }
                    }
#line 2434 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 103: /* type_specifier: VOID  */
#line 889 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("void"); curr_type = "void";}
#line 2440 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 104: /* type_specifier: CHAR  */
#line 891 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("char"); curr_type = "char";}
#line 2446 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 105: /* type_specifier: SHORT  */
#line 893 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2452 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 106: /* type_specifier: INT  */
#line 895 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("int"); curr_type = "int";}
#line 2458 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 107: /* type_specifier: LONG  */
#line 897 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2464 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 108: /* type_specifier: FLOAT  */
#line 899 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup("float"); curr_type = "float";}
#line 2470 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 109: /* type_specifier: DOUBLE  */
#line 901 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2476 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 110: /* type_specifier: SIGNED  */
#line 903 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2482 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 111: /* type_specifier: UNSIGNED  */
#line 905 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2488 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 112: /* type_specifier: BOOL  */
#line 907 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2494 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 113: /* type_specifier: COMPLEX  */
#line 909 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2500 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 114: /* type_specifier: IMAGINARY  */
#line 911 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2506 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 115: /* type_specifier: enum_specifier  */
#line 913 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); curr_type = "void";}
#line 2512 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 119: /* specifier_qualifier_list_opt: %empty  */
#line 922 "ass6_20CS10065_20CS30004_parser.y"
                                {
                                    (yyval.str_attr) = strdup("");
                                }
#line 2520 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 129: /* type_qualifier: CONST  */
#line 945 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); }
#line 2526 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 130: /* type_qualifier: RESTRICT  */
#line 947 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); }
#line 2532 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 131: /* type_qualifier: VOLATILE  */
#line 949 "ass6_20CS10065_20CS30004_parser.y"
                  { (yyval.str_attr) = strdup(""); }
#line 2538 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 133: /* declarator: pointer_opt direct_declarator  */
#line 956 "ass6_20CS10065_20CS30004_parser.y"
              { 
                  if(strlen((yyvsp[-1].str_attr))){
                      (yyvsp[0].sym_ptr) -> update((yyvsp[-1].str_attr));
                  }
                  (yyval.sym_ptr) = (yyvsp[0].sym_ptr);
              }
#line 2549 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 135: /* pointer_opt: %empty  */
#line 966 "ass6_20CS10065_20CS30004_parser.y"
              { (yyval.str_attr) = strdup(""); }
#line 2555 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 136: /* direct_declarator: IDENTIFIER  */
#line 970 "ass6_20CS10065_20CS30004_parser.y"
                      { 
                          (yyvsp[0].sym_ptr) -> update(curr_type); 
                          (yyval.sym_ptr) = curr_sym = (yyvsp[0].sym_ptr);
                      }
#line 2564 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 137: /* direct_declarator: LF_PRNTH declarator RT_PRNTH  */
#line 975 "ass6_20CS10065_20CS30004_parser.y"
                      { (yyval.sym_ptr) = (yyvsp[-1].sym_ptr);}
#line 2570 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 138: /* direct_declarator: direct_declarator LF_SQBR type_qualifier_list assignment_expression_opt RT_SQBR  */
#line 976 "ass6_20CS10065_20CS30004_parser.y"
                                                                                                          {}
#line 2576 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 139: /* direct_declarator: direct_declarator LF_SQBR assignment_expression_opt RT_SQBR  */
#line 978 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          string u = (yyvsp[-3].sym_ptr) -> type, v = "";
                          for(char c : u){
                              if(c == 'i' || c == 'v' || c == 'f' || c == 'c'){
                                  v = v + "array(" + (yyvsp[-1].expr) -> sym -> init_val + ", ";
                              }
                              v.push_back(c);
                          }
                          v.push_back(')');
                          (yyvsp[-3].sym_ptr) -> update(v);
                          (yyval.sym_ptr) = curr_sym = (yyvsp[-3].sym_ptr);
                      }
#line 2593 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 140: /* direct_declarator: direct_declarator LF_SQBR STATIC type_qualifier_list_opt assignment_expression RT_SQBR  */
#line 990 "ass6_20CS10065_20CS30004_parser.y"
                                                                                                          {}
#line 2599 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 141: /* direct_declarator: direct_declarator LF_SQBR type_qualifier_list STATIC assignment_expression RT_SQBR  */
#line 991 "ass6_20CS10065_20CS30004_parser.y"
                                                                                                          {}
#line 2605 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 142: /* direct_declarator: direct_declarator LF_PRNTH enter_func parameter_type_list RT_PRNTH  */
#line 993 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          curr_table -> ST_name = "ST_" + (yyvsp[-4].sym_ptr) -> name;
                          if((yyvsp[-4].sym_ptr) -> type != "void"){
                              curr_table -> lookup("_retval") -> update((yyvsp[-4].sym_ptr) -> type); 
                          }
                          (yyvsp[-4].sym_ptr) -> nested_table = curr_table;
                          curr_table -> parent_table = global_table;

                          curr_sym = (yyval.sym_ptr) = (yyvsp[-4].sym_ptr);
                          curr_table = global_table;
                      }
#line 2621 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 143: /* direct_declarator: direct_declarator LF_PRNTH identifier_list RT_PRNTH  */
#line 1004 "ass6_20CS10065_20CS30004_parser.y"
                                                                       {}
#line 2627 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 144: /* direct_declarator: direct_declarator LF_PRNTH enter_func RT_PRNTH  */
#line 1006 "ass6_20CS10065_20CS30004_parser.y"
                      {   
                          curr_table -> ST_name = "ST_" + (yyvsp[-3].sym_ptr) -> name;
                          if((yyvsp[-3].sym_ptr) -> type != "void"){
                              curr_table -> lookup("_retval") -> update((yyvsp[-3].sym_ptr) -> type); 
                          }
                          (yyvsp[-3].sym_ptr) -> nested_table = curr_table;
                          curr_table -> parent_table = global_table;

                          curr_sym = (yyval.sym_ptr) = (yyvsp[-3].sym_ptr);
                          curr_table = global_table;
                      }
#line 2643 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 148: /* assignment_expression_opt: %empty  */
#line 1025 "ass6_20CS10065_20CS30004_parser.y"
                            {(yyval.expr) = new expression; }
#line 2649 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 149: /* pointer: ASTERIX type_qualifier_list_opt  */
#line 1029 "ass6_20CS10065_20CS30004_parser.y"
            {
                curr_type.push_back('*');
                (yyval.str_attr) = strdup(curr_type.c_str());
            }
#line 2658 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 150: /* pointer: ASTERIX type_qualifier_list_opt pointer  */
#line 1034 "ass6_20CS10065_20CS30004_parser.y"
            {
                curr_type.push_back('*');
                (yyval.str_attr) = strdup(curr_type.c_str());
            }
#line 2667 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 157: /* parameter_declaration: declaration_specifiers declarator  */
#line 1053 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyvsp[0].sym_ptr) -> is_parameter = true;
                            curr_table -> param_list.push_back((yyvsp[0].sym_ptr) -> name);
                        }
#line 2676 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 162: /* initializer: assignment_expression  */
#line 1068 "ass6_20CS10065_20CS30004_parser.y"
                { (yyval.sym_ptr) = (yyvsp[0].expr) -> sym;}
#line 2682 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 163: /* initializer: LF_BRACE initializer_list RT_BRACE  */
#line 1069 "ass6_20CS10065_20CS30004_parser.y"
                                                {}
#line 2688 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 164: /* initializer: LF_BRACE initializer_list COMMA RT_BRACE  */
#line 1070 "ass6_20CS10065_20CS30004_parser.y"
                                                      {}
#line 2694 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 176: /* statement: expression_statement  */
#line 1097 "ass6_20CS10065_20CS30004_parser.y"
              {
                  (yyval.stmt) = new statement;
                  (yyval.stmt) -> nextlist = (yyvsp[0].stmt) -> nextlist;
              }
#line 2703 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 180: /* labeled_statement: IDENTIFIER COLON statement  */
#line 1106 "ass6_20CS10065_20CS30004_parser.y"
                                              {}
#line 2709 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 181: /* labeled_statement: CASE constant_expression COLON statement  */
#line 1107 "ass6_20CS10065_20CS30004_parser.y"
                                                            {}
#line 2715 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 182: /* labeled_statement: DEFAULT COLON statement  */
#line 1108 "ass6_20CS10065_20CS30004_parser.y"
                                           {}
#line 2721 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 183: /* compound_statement: LF_BRACE enter_block block_item_list_opt RT_BRACE  */
#line 1112 "ass6_20CS10065_20CS30004_parser.y"
                      {
                          (yyval.stmt) = (yyvsp[-1].stmt);
                          emit(curr_table -> ST_name.substr(2), "", "lebal_block");
                          curr_table = curr_table -> parent_table;
                      }
#line 2731 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 185: /* block_item_list_opt: %empty  */
#line 1121 "ass6_20CS10065_20CS30004_parser.y"
                      { (yyval.stmt) = new statement;}
#line 2737 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 187: /* block_item_list: block_item_list marker_M block_item  */
#line 1126 "ass6_20CS10065_20CS30004_parser.y"
                    {
                        (yyval.stmt) = (yyvsp[0].stmt);
                        backpatch((yyvsp[-2].stmt) -> nextlist, (yyvsp[-1].int_attr));
                    }
#line 2746 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 188: /* block_item: declaration  */
#line 1133 "ass6_20CS10065_20CS30004_parser.y"
              { (yyval.stmt) = new statement;}
#line 2752 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 190: /* expression_statement: expression_opt SEMICOLON  */
#line 1138 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyval.stmt) = new statement;
                            (yyval.stmt) -> nextlist = (yyvsp[-1].expr) -> nextlist;
                        }
#line 2761 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 192: /* expression_opt: %empty  */
#line 1146 "ass6_20CS10065_20CS30004_parser.y"
                  {(yyval.expr) = new expression;}
#line 2767 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 193: /* selection_statement: IF LF_PRNTH expression RT_PRNTH marker_M statement guard_N  */
#line 1150 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyval.stmt) = new statement;
                            backpatch((yyvsp[-4].expr) -> truelist, (yyvsp[-2].int_attr));
                            vector<int> I = merge((yyvsp[-1].stmt) -> nextlist, (yyvsp[0].expr) -> nextlist);
                            (yyval.stmt) -> nextlist = merge((yyvsp[-4].expr) -> falselist, I);
                        }
#line 2778 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 194: /* selection_statement: IF LF_PRNTH expression RT_PRNTH marker_M statement guard_N ELSE marker_M statement  */
#line 1157 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyval.stmt) = new statement;
                            backpatch((yyvsp[-7].expr) -> truelist, (yyvsp[-5].int_attr));
                            backpatch((yyvsp[-7].expr) -> falselist, (yyvsp[-1].int_attr));
                            vector<int> I = merge((yyvsp[-4].stmt) -> nextlist, (yyvsp[-3].expr) -> nextlist);
                            (yyval.stmt) -> nextlist = merge((yyvsp[0].stmt) -> nextlist, I);
                        }
#line 2790 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 195: /* selection_statement: SWITCH LF_PRNTH expression RT_PRNTH statement  */
#line 1164 "ass6_20CS10065_20CS30004_parser.y"
                                                                   {}
#line 2796 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 196: /* iteration_statement: WHILE marker_M LF_PRNTH expression RT_PRNTH marker_M statement  */
#line 1168 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyval.stmt) = new statement;
                            backpatch((yyvsp[0].stmt) -> nextlist, (yyvsp[-5].int_attr));
                            backpatch((yyvsp[-3].expr) -> truelist, (yyvsp[-1].int_attr));
                            (yyval.stmt) -> nextlist = (yyvsp[-3].expr) -> falselist;
                            emit(to_string((yyvsp[-5].int_attr)), "", "goto");
                        }
#line 2808 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 197: /* iteration_statement: DO marker_M statement marker_M WHILE LF_PRNTH expression RT_PRNTH SEMICOLON  */
#line 1176 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyval.stmt) = new statement;
                            backpatch((yyvsp[-2].expr) -> truelist, (yyvsp[-7].int_attr));
                            backpatch((yyvsp[-6].stmt) -> nextlist, (yyvsp[-5].int_attr));
                            (yyval.stmt) -> nextlist = (yyvsp[-2].expr) -> falselist;
                        }
#line 2819 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 198: /* iteration_statement: FOR LF_PRNTH expression_opt SEMICOLON marker_M expression_opt SEMICOLON marker_M expression_opt guard_N RT_PRNTH marker_M statement  */
#line 1183 "ass6_20CS10065_20CS30004_parser.y"
                        {
                            (yyval.stmt) = new statement;
                            backpatch((yyvsp[-7].expr) -> truelist, (yyvsp[-1].int_attr));
                            backpatch((yyvsp[-3].expr) -> nextlist, (yyvsp[-8].int_attr));
                            backpatch((yyvsp[0].stmt) -> nextlist, (yyvsp[-5].int_attr));
                            (yyval.stmt) -> nextlist = (yyvsp[-7].expr) -> falselist;
                            emit(to_string((yyvsp[-5].int_attr)), "", "goto");
                        }
#line 2832 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 199: /* iteration_statement: FOR LF_PRNTH declaration expression_opt SEMICOLON expression_opt RT_PRNTH statement  */
#line 1191 "ass6_20CS10065_20CS30004_parser.y"
                                                                                                         {}
#line 2838 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 200: /* jump_statement: GOTO IDENTIFIER SEMICOLON  */
#line 1194 "ass6_20CS10065_20CS30004_parser.y"
                                          {}
#line 2844 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 201: /* jump_statement: CONTINUE SEMICOLON  */
#line 1195 "ass6_20CS10065_20CS30004_parser.y"
                                   {}
#line 2850 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 202: /* jump_statement: BREAK SEMICOLON  */
#line 1196 "ass6_20CS10065_20CS30004_parser.y"
                                {}
#line 2856 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 203: /* jump_statement: RETURN expression SEMICOLON  */
#line 1198 "ass6_20CS10065_20CS30004_parser.y"
                  {
                      (yyval.stmt) = new statement;
                      // emit("_retval", $2 -> sym -> name);
                      // emit("", "_retval", "return");
                      emit("", (yyvsp[-1].expr) -> sym -> name, "return");
                  }
#line 2867 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 204: /* jump_statement: RETURN SEMICOLON  */
#line 1205 "ass6_20CS10065_20CS30004_parser.y"
                  {
                      (yyval.stmt) = new statement;
                      emit("", "", "return");
                  }
#line 2876 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;

  case 209: /* function_definition: declaration_specifiers declarator declaration_list_opt enter_func create_label LF_BRACE block_item_list_opt RT_BRACE  */
#line 1222 "ass6_20CS10065_20CS30004_parser.y"
                        { 
                            emit((yyvsp[-6].sym_ptr) -> name, "", "lebal");
                            curr_table = global_table;
                            backpatch((yyvsp[-1].stmt) -> nextlist, nextinstr);
                        }
#line 2886 "ass6_20CS10065_20CS30004_parser.tab.c"
    break;


#line 2890 "ass6_20CS10065_20CS30004_parser.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 1237 "ass6_20CS10065_20CS30004_parser.y"


void yyerror(string s){
    printf("#\n\t--------------------------------------------------------------------------------------\n");
    printf("#\t                                %s on line %d\n", s.c_str(), line_count);
    printf("#\t--------------------------------------------------------------------------------------\n\n");
    cerr << "\n\n ----------------------- SYNTAX ERROR FOUND ON LINE " << line_count << ", GENERATION OF THREE ADDRESS CODE INCOMPLETE ----------------------- \n\n";
    exit(1);
    all_ok = 0;
}
