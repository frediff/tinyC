#	***************************************************************************************************************
#	****************************************  COMPILERS LABRORATORY   *********************************************
#	****************************************      ASSIGNMENT 6        *********************************************
#	****************************************    x86-64 TARGET CODE    *********************************************
#	**************************************** SUBHAM GHOSH (20CS10065) *********************************************
#	**************************************** ANUBHAV DHAR (20CS30004) *********************************************
#	***************************************************************************************************************



#############################################################################################################################################################

# 				TARGET IS AS FOLLOWS (not printing it in any ".cout" file as it will be our executables

#############################################################################################################################################################



# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_global		 (Parent Table : NULL)		 tot_ar_offset = -324
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                           NMAX                           int                          1000                             4                             0                          NULL
#                   is_armstrong                          func                                                           0                             4               ST_is_armstrong
#                           main                          func                                                           0                             4                       ST_main
#                       printInt                          func                                                           0                             4                   ST_printInt
#                       printStr                          func                                                           0                             4                   ST_printStr
#                        readInt                          func                                                           0                             4                    ST_readInt
#          sum_of_cube_of_digits                          func                                                           0                             4      ST_sum_of_cube_of_digits
#                             t1                           int                          1000                             4                             4                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_is_armstrong		 (Parent Table : ST_global)		 tot_ar_offset = -36
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#             ST_is_armstrong_b7                         block                                                           0                             0            ST_is_armstrong_b7
#                        _retval                           int                                                           4                             0                          NULL
#                              n                           int                                                           4                             4                          NULL
#                            t11                           int                                                           4                             8                          NULL
#                            t13                           int                             0                             4                            12                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_is_armstrong_b7		 (Parent Table : ST_is_armstrong)		 tot_ar_offset = -20
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t12                           int                             1                             4                            16                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main		 (Parent Table : ST_global)		 tot_ar_offset = -176
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                     ST_main_b9                         block                                                           0                             0                    ST_main_b9
#                        _retval                           int                                                           4                             0                          NULL
#                              i                           int                             1                             4                             4                          NULL
#                            t14                         char*    "Armstrong numbers below "                             8                             8                          NULL
#                            t15                           int                                                           4                            16                          NULL
#                            t16                           int                                                           4                            20                          NULL
#                            t17                         char*                     " are:\n"                             8                            24                          NULL
#                            t18                           int                                                           4                            32                          NULL
#                            t19                           int                             1                             4                            36                          NULL
#                            t20                           int                             1                             4                            40                          NULL
#                            t26                           int                             0                             4                            44                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b9		 (Parent Table : ST_main)		 tot_ar_offset = -128
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                 ST_main_b9_b10                         block                                                           0                            48                ST_main_b9_b10
#                            t21                           int                                                           4                            48                          NULL
#                            t22                           int                             1                             4                            52                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b9_b10		 (Parent Table : ST_main_b9)		 tot_ar_offset = -72
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t23                           int                                                           4                            56                          NULL
#                            t24                         char*                          "\n"                             8                            60                          NULL
#                            t25                           int                                                           4                            68                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_printInt		 (Parent Table : ST_global)		 tot_ar_offset = -8
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                        _retval                           int                                                           4                             0                          NULL
#                          dummy                           int                                                           4                             4                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_printStr		 (Parent Table : ST_global)		 tot_ar_offset = -12
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                        _retval                           int                                                           4                             0                          NULL
#                          dummy                         char*                                                           8                             4                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_readInt		 (Parent Table : ST_global)		 tot_ar_offset = -12
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                        _retval                           int                                                           4                             0                          NULL
#                          dummy                          int*                                                           8                             4                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_sum_of_cube_of_digits		 (Parent Table : ST_global)		 tot_ar_offset = -72
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#    ST_sum_of_cube_of_digits_b5                         block                                                           0                             0   ST_sum_of_cube_of_digits_b5
#                        _retval                           int                                                           4                             0                          NULL
#                              n                           int                                                           4                             4                          NULL
#                              s                           int                             0                             4                             8                          NULL
#                             t2                           int                             0                             4                            12                          NULL
#                             t3                           int                             0                             4                            16                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_sum_of_cube_of_digits_b5		 (Parent Table : ST_sum_of_cube_of_digits)		 tot_ar_offset = -52
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t10                           int                                                           4                            20                          NULL
#                             t4                           int                            10                             4                            24                          NULL
#                             t5                           int                                                           4                            28                          NULL
#                             t6                           int                                                           4                            32                          NULL
#                             t7                           int                                                           4                            36                          NULL
#                             t8                           int                                                           4                            40                          NULL
#                             t9                           int                            10                             4                            44                          NULL
#                              x                           int                                                           4                            48                          NULL
# ##############################################################################################################################################################################################





# 100:		t1 = 1000
# 101:		NMAX = t1
# 102:	sum_of_cube_of_digits:
# 103:		t2 = 0
# 104:		s = t2
# 105:		t3 = 0
# 106:		if n != t3 goto 108
# 107:		goto 121
# 108:	sum_of_cube_of_digits_b5: #block
# 109:		t4 = 10
# 110:		t5 = n % t4
# 111:		x = t5
# 112:		t6 = x * x
# 113:		t7 = t6 * x
# 114:		t8 = s + t7
# 115:		s = t8
# 116:		t9 = 10
# 117:		t10 = n / t9
# 118:		n = t10
# 119:	END__sum_of_cube_of_digits_b5: #block
# 120:		goto 105
# 121:		return s
# 122:	END_sum_of_cube_of_digits:
# 123:	is_armstrong:
# 124:		param n
# 125:		t11 = call sum_of_cube_of_digits, 1
# 126:		if t11 == n goto 128
# 127:		goto 133
# 128:	is_armstrong_b7: #block
# 129:		t12 = 1
# 130:		return t12
# 131:	END__is_armstrong_b7: #block
# 132:		goto 133
# 133:		t13 = 0
# 134:		return t13
# 135:	END_is_armstrong:
# 136:	main:
# 137:		t14 = "Armstrong numbers below "
# 138:		param t14
# 139:		t15 = call printStr, 1
# 140:		param NMAX
# 141:		t16 = call printInt, 1
# 142:		t17 = " are:\n"
# 143:		param t17
# 144:		t18 = call printStr, 1
# 145:		t19 = 1
# 146:		i = t19
# 147:		t20 = 1
# 148:		i = t20
# 149:		if i <= NMAX goto 153
# 150:		goto 169
# 151:		i = i + 1
# 152:		goto 149
# 153:	main_b9: #block
# 154:		param i
# 155:		t21 = call is_armstrong, 1
# 156:		t22 = 1
# 157:		if t21 == t22 goto 159
# 158:		goto 151
# 159:	main_b9_b10: #block
# 160:		param i
# 161:		t23 = call printInt, 1
# 162:		t24 = "\n"
# 163:		param t24
# 164:		t25 = call printStr, 1
# 165:	END__main_b9_b10: #block
# 166:		goto 151
# 167:	END__main_b9: #block
# 168:		goto 151
# 169:		t26 = 0
# 170:		return t26
# 171:	END_main:



#############################################################################################################################################################




#############################################################################################################################################################

	.file	"./Test_Cases/ass6_20CS10065_20CS30004_test10.c"

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 158 :: curr_table = ST_global
	.section	.rodata
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 161 :: curr_table = ST_global
.LC0:
	.string	"Armstrong numbers below "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC1:
	.string	" are:\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC2:
	.string	"\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
# is_armstrong
#	n : -8
#	t11 : -12
#	t13 : -16
# main
#	i : -8
#	t14 : -16
#	t15 : -20
#	t16 : -24
#	t17 : -32
#	t18 : -36
#	t19 : -40
#	t20 : -44
#	t26 : -48
# printInt
#	dummy : -8
# printStr
#	dummy : -12
# readInt
#	dummy : -12
# sum_of_cube_of_digits
#	n : -8
#	s : -12
#	t2 : -16
#	t3 : -20

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 100:		t1 = 1000



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 101:		NMAX = t1
	.globl	NMAX
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 251 :: curr_table = ST_global
	.data
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 252 :: curr_table = ST_global
	.align	4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 253 :: curr_table = ST_global
	.type	NMAX, @object
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 254 :: curr_table = ST_global
	.size	NMAX, 4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 255 :: curr_table = ST_global
NMAX:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 256 :: curr_table = ST_global
	.long	1000
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 257 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 102:	sum_of_cube_of_digits:
	.text
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 203 :: curr_table = ST_global
# function prologue for function sum_of_cube_of_digits
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 211 :: curr_table = ST_sum_of_cube_of_digits
	.global	sum_of_cube_of_digits
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 212 :: curr_table = ST_sum_of_cube_of_digits
	.type	sum_of_cube_of_digits, @function
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 213 :: curr_table = ST_sum_of_cube_of_digits
sum_of_cube_of_digits:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 214 :: curr_table = ST_sum_of_cube_of_digits
.LFB0:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 215 :: curr_table = ST_sum_of_cube_of_digits
	.cfi_startproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 216 :: curr_table = ST_sum_of_cube_of_digits
	pushq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 217 :: curr_table = ST_sum_of_cube_of_digits
	.cfi_def_cfa_offset 16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 218 :: curr_table = ST_sum_of_cube_of_digits
	.cfi_offset 6, -16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 219 :: curr_table = ST_sum_of_cube_of_digits
	movq	%rsp, %rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 220 :: curr_table = ST_sum_of_cube_of_digits
	.cfi_def_cfa_register	6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 221 :: curr_table = ST_sum_of_cube_of_digits
	subq	$72, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_sum_of_cube_of_digits
	movl	%edi, -8(%rbp)



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 103:		t2 = 0
	movl	$0, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 104:		s = t2
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_sum_of_cube_of_digits
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 105:		t3 = 0
.L5:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_sum_of_cube_of_digits
	movl	$0, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 106:		if n != t3 goto 108
	movl	-20(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_sum_of_cube_of_digits
	cmpl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_sum_of_cube_of_digits
	jne	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 107:		goto 121
	jmp	.L4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 108:	sum_of_cube_of_digits_b5: #block
.L3:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 109:		t4 = 10
	movl	$10, -28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 110:		t5 = n % t4
	movl	-8(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 407 :: curr_table = ST_sum_of_cube_of_digits_b5
	cdq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 408 :: curr_table = ST_sum_of_cube_of_digits_b5
	idivl	-28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 409 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%edx, -32(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 410 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 111:		x = t5
	movl	-32(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 112:		t6 = x * x
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_sum_of_cube_of_digits_b5
	imull	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 113:		t7 = t6 * x
	movl	-36(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_sum_of_cube_of_digits_b5
	imull	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 114:		t8 = s + t7
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 386 :: curr_table = ST_sum_of_cube_of_digits_b5
	addl	-40(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 387 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -44(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 388 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 115:		s = t8
	movl	-44(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 116:		t9 = 10
	movl	$10, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 117:		t10 = n / t9
	movl	-8(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 407 :: curr_table = ST_sum_of_cube_of_digits_b5
	cdq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 408 :: curr_table = ST_sum_of_cube_of_digits_b5
	idivl	-48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 409 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 410 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 118:		n = t10
	movl	-24(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_sum_of_cube_of_digits_b5
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_sum_of_cube_of_digits_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits_b5
# 119:	END__sum_of_cube_of_digits_b5: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 120:		goto 105
	jmp	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 121:		return s
.L4:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_sum_of_cube_of_digits
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_sum_of_cube_of_digits
	jmp	.LFE0
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_sum_of_cube_of_digits



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_sum_of_cube_of_digits
# 122:	END_sum_of_cube_of_digits:
# function epilogue for function sum_of_cube_of_digits
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 231 :: curr_table = ST_global
.LFE0:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 232 :: curr_table = ST_global
	movq	%rbp, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 233 :: curr_table = ST_global
	popq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 234 :: curr_table = ST_global
	.cfi_def_cfa 7, 8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 235 :: curr_table = ST_global
	ret
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 236 :: curr_table = ST_global
	.cfi_endproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 237 :: curr_table = ST_global
	.size	sum_of_cube_of_digits, .-sum_of_cube_of_digits
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 123:	is_armstrong:
	.text
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 203 :: curr_table = ST_global
# function prologue for function is_armstrong
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 211 :: curr_table = ST_is_armstrong
	.global	is_armstrong
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 212 :: curr_table = ST_is_armstrong
	.type	is_armstrong, @function
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 213 :: curr_table = ST_is_armstrong
is_armstrong:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 214 :: curr_table = ST_is_armstrong
.LFB1:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 215 :: curr_table = ST_is_armstrong
	.cfi_startproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 216 :: curr_table = ST_is_armstrong
	pushq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 217 :: curr_table = ST_is_armstrong
	.cfi_def_cfa_offset 16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 218 :: curr_table = ST_is_armstrong
	.cfi_offset 6, -16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 219 :: curr_table = ST_is_armstrong
	movq	%rsp, %rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 220 :: curr_table = ST_is_armstrong
	.cfi_def_cfa_register	6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 221 :: curr_table = ST_is_armstrong
	subq	$36, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_is_armstrong
	movl	%edi, -8(%rbp)



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 124:		param n



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 125:		t11 = call sum_of_cube_of_digits, 1
	movl	-8(%rbp), %edi
	call	sum_of_cube_of_digits
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_is_armstrong
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_is_armstrong



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 126:		if t11 == n goto 128
	movl	-8(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_is_armstrong
	cmpl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_is_armstrong
	je	.L6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_is_armstrong



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 127:		goto 133
	jmp	.L7
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_is_armstrong



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 128:	is_armstrong_b7: #block
.L6:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_is_armstrong_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong_b7
# 129:		t12 = 1
	movl	$1, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_is_armstrong_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong_b7
# 130:		return t12
	movl	-20(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_is_armstrong_b7
	jmp	.LFE1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_is_armstrong_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong_b7
# 131:	END__is_armstrong_b7: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 132:		goto 133
	jmp	.L7
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_is_armstrong



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 133:		t13 = 0
.L7:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_is_armstrong
	movl	$0, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_is_armstrong



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 134:		return t13
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_is_armstrong
	jmp	.LFE1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_is_armstrong



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_is_armstrong
# 135:	END_is_armstrong:
# function epilogue for function is_armstrong
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 231 :: curr_table = ST_global
.LFE1:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 232 :: curr_table = ST_global
	movq	%rbp, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 233 :: curr_table = ST_global
	popq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 234 :: curr_table = ST_global
	.cfi_def_cfa 7, 8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 235 :: curr_table = ST_global
	ret
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 236 :: curr_table = ST_global
	.cfi_endproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 237 :: curr_table = ST_global
	.size	is_armstrong, .-is_armstrong
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 136:	main:
	.text
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 203 :: curr_table = ST_global
# function prologue for function main
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 211 :: curr_table = ST_main
	.global	main
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 212 :: curr_table = ST_main
	.type	main, @function
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 213 :: curr_table = ST_main
main:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 214 :: curr_table = ST_main
.LFB2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 215 :: curr_table = ST_main
	.cfi_startproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 216 :: curr_table = ST_main
	pushq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 217 :: curr_table = ST_main
	.cfi_def_cfa_offset 16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 218 :: curr_table = ST_main
	.cfi_offset 6, -16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 219 :: curr_table = ST_main
	movq	%rsp, %rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 220 :: curr_table = ST_main
	.cfi_def_cfa_register	6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 221 :: curr_table = ST_main
	subq	$176, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 137:		t14 = "Armstrong numbers below "
	movq	$.LC0, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 138:		param t14



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 139:		t15 = call printStr, 1
	movq	-16(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 140:		param NMAX



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 141:		t16 = call printInt, 1
	movl	NMAX, %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 142:		t17 = " are:\n"
	movq	$.LC1, -32(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 143:		param t17



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 144:		t18 = call printStr, 1
	movq	-32(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 145:		t19 = 1
	movl	$1, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 146:		i = t19
	movl	-40(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 147:		t20 = 1
	movl	$1, -44(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 148:		i = t20
	movl	-44(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 149:		if i <= NMAX goto 153
.L10:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	NMAX, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main
	cmpl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main
	jle	.L8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 150:		goto 169
	jmp	.L9
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 151:		i = i + 1
.L12:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	incl	-8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 152:		goto 149
	jmp	.L10
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 153:	main_b9: #block
.L8:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 154:		param i



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 155:		t21 = call is_armstrong, 1
	movl	-8(%rbp), %edi
	call	is_armstrong
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b9
	movl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 156:		t22 = 1
	movl	$1, -56(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 157:		if t21 == t22 goto 159
	movl	-56(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b9
	cmpl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b9
	je	.L11
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 158:		goto 151
	jmp	.L12
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 159:	main_b9_b10: #block
.L11:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b9_b10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9_b10
# 160:		param i



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9_b10
# 161:		t23 = call printInt, 1
	movl	-8(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b9_b10
	movl	%eax, -60(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b9_b10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9_b10
# 162:		t24 = "\n"
	movq	$.LC2, -68(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main_b9_b10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9_b10
# 163:		param t24



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9_b10
# 164:		t25 = call printStr, 1
	movq	-68(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b9_b10
	movl	%eax, -72(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b9_b10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9_b10
# 165:	END__main_b9_b10: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 166:		goto 151
	jmp	.L12
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 167:	END__main_b9: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 168:		goto 151
	jmp	.L12
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 169:		t26 = 0
.L9:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	$0, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 170:		return t26
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_main
	jmp	.LFE2
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 171:	END_main:
# function epilogue for function main
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 231 :: curr_table = ST_global
.LFE2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 232 :: curr_table = ST_global
	movq	%rbp, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 233 :: curr_table = ST_global
	popq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 234 :: curr_table = ST_global
	.cfi_def_cfa 7, 8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 235 :: curr_table = ST_global
	ret
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 236 :: curr_table = ST_global
	.cfi_endproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 237 :: curr_table = ST_global
	.size	main, .-main
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global


