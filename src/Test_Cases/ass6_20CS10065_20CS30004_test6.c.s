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
# 	 SYMBOL TABLE : ST_global		 (Parent Table : NULL)		 tot_ar_offset = -184
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            gcd                          func                                                           0                             0                        ST_gcd
#                           main                          func                                                           0                             0                       ST_main
#                       printInt                          func                                                           0                             0                   ST_printInt
#                       printStr                          func                                                           0                             0                   ST_printStr
#                        readInt                          func                                                           0                             0                    ST_readInt
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_gcd		 (Parent Table : ST_global)		 tot_ar_offset = -52
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                      ST_gcd_b2                         block                                                           0                             0                     ST_gcd_b2
#                        _retval                           int                                                           4                             0                          NULL
#                              a                           int                                                           4                             4                          NULL
#                              b                           int                                                           4                             8                          NULL
#                              t                           int                                                           4                            12                          NULL
#                             t1                           int                                                           4                            16                          NULL
#                             t2                           int                             0                             4                            20                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_gcd_b2		 (Parent Table : ST_gcd)		 tot_ar_offset = -28
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                             t3                           int                                                           4                            24                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main		 (Parent Table : ST_global)		 tot_ar_offset = -100
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                        _retval                           int                                                           4                             0                          NULL
#                              a                           int                                                           4                             4                          NULL
#                              b                           int                                                           4                             8                          NULL
#                              g                           int                                                           4                            12                          NULL
#                            t10                          int*                                                           8                            16                          NULL
#                            t11                           int                                                           4                            24                          NULL
#                            t12                         char*                "Their GCD = "                             8                            28                          NULL
#                            t13                           int                                                           4                            36                          NULL
#                            t14                           int                                                           4                            40                          NULL
#                            t15                           int                                                           4                            44                          NULL
#                            t16                         char*                          "\n"                             8                            48                          NULL
#                            t17                           int                                                           4                            56                          NULL
#                            t18                           int                             0                             4                            60                          NULL
#                             t4                         char*        "Enter first number: "                             8                            64                          NULL
#                             t5                           int                                                           4                            72                          NULL
#                             t6                          int*                                                           8                            76                          NULL
#                             t7                           int                                                           4                            84                          NULL
#                             t8                         char*       "Enter second number: "                             8                            88                          NULL
#                             t9                           int                                                           4                            96                          NULL
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





# 100:	gcd:
# 101:		t1 = a % b
# 102:		t2 = 0
# 103:		if t1 != t2 goto 105
# 104:		goto 112
# 105:	gcd_b2: #block
# 106:		t3 = a % b
# 107:		t = t3
# 108:		a = b
# 109:		b = t
# 110:	END__gcd_b2: #block
# 111:		goto 101
# 112:		return b
# 113:	END_gcd:
# 114:	main:
# 115:		t4 = "Enter first number: "
# 116:		param t4
# 117:		t5 = call printStr, 1
# 118:		t6 = &g
# 119:		param t6
# 120:		t7 = call readInt, 1
# 121:		a = t7
# 122:		t8 = "Enter second number: "
# 123:		param t8
# 124:		t9 = call printStr, 1
# 125:		t10 = &g
# 126:		param t10
# 127:		t11 = call readInt, 1
# 128:		b = t11
# 129:		t12 = "Their GCD = "
# 130:		param t12
# 131:		t13 = call printStr, 1
# 132:		param a
# 133:		param b
# 134:		t14 = call gcd, 2
# 135:		param t14
# 136:		t15 = call printInt, 1
# 137:		t16 = "\n"
# 138:		param t16
# 139:		t17 = call printStr, 1
# 140:		t18 = 0
# 141:		return t18
# 142:	END_main:



#############################################################################################################################################################




#############################################################################################################################################################

	.file	"./Test_Cases/ass6_20CS10065_20CS30004_test6.c"

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 158 :: curr_table = ST_global
	.section	.rodata
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 161 :: curr_table = ST_global
.LC0:
	.string	"Enter first number: "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC1:
	.string	"Enter second number: "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC2:
	.string	"Their GCD = "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC3:
	.string	"\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
# gcd
#	a : -8
#	b : -12
#	t : -16
#	t1 : -20
#	t2 : -24
# main
#	a : -8
#	b : -12
#	g : -16
#	t10 : -24
#	t11 : -28
#	t12 : -36
#	t13 : -40
#	t14 : -44
#	t15 : -48
#	t16 : -56
#	t17 : -60
#	t18 : -64
#	t4 : -72
#	t5 : -76
#	t6 : -84
#	t7 : -88
#	t8 : -96
#	t9 : -100
# printInt
#	dummy : -8
# printStr
#	dummy : -12
# readInt
#	dummy : -12

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 100:	gcd:
	.text
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 203 :: curr_table = ST_global
# function prologue for function gcd
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 211 :: curr_table = ST_gcd
	.global	gcd
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 212 :: curr_table = ST_gcd
	.type	gcd, @function
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 213 :: curr_table = ST_gcd
gcd:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 214 :: curr_table = ST_gcd
.LFB0:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 215 :: curr_table = ST_gcd
	.cfi_startproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 216 :: curr_table = ST_gcd
	pushq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 217 :: curr_table = ST_gcd
	.cfi_def_cfa_offset 16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 218 :: curr_table = ST_gcd
	.cfi_offset 6, -16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 219 :: curr_table = ST_gcd
	movq	%rsp, %rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 220 :: curr_table = ST_gcd
	.cfi_def_cfa_register	6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 221 :: curr_table = ST_gcd
	subq	$52, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_gcd
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 101:		t1 = a % b
.L4:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_gcd
	movl	-8(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 407 :: curr_table = ST_gcd
	cdq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 408 :: curr_table = ST_gcd
	idivl	-12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 409 :: curr_table = ST_gcd
	movl	%edx, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 410 :: curr_table = ST_gcd



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 102:		t2 = 0
	movl	$0, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_gcd



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 103:		if t1 != t2 goto 105
	movl	-24(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_gcd
	cmpl	%eax, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_gcd
	jne	.L2
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_gcd



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 104:		goto 112
	jmp	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_gcd



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 105:	gcd_b2: #block
.L2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_gcd_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd_b2
# 106:		t3 = a % b
	movl	-8(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 407 :: curr_table = ST_gcd_b2
	cdq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 408 :: curr_table = ST_gcd_b2
	idivl	-12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 409 :: curr_table = ST_gcd_b2
	movl	%edx, -28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 410 :: curr_table = ST_gcd_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd_b2
# 107:		t = t3
	movl	-28(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_gcd_b2
	movl	%eax, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_gcd_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd_b2
# 108:		a = b
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_gcd_b2
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_gcd_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd_b2
# 109:		b = t
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_gcd_b2
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_gcd_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd_b2
# 110:	END__gcd_b2: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 111:		goto 101
	jmp	.L4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_gcd



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 112:		return b
.L3:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_gcd
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_gcd
	jmp	.LFE0
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_gcd



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_gcd
# 113:	END_gcd:
# function epilogue for function gcd
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
	.size	gcd, .-gcd
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 114:	main:
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
.LFB1:
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
	subq	$100, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 115:		t4 = "Enter first number: "
	movq	$.LC0, -72(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 116:		param t4



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 117:		t5 = call printStr, 1
	movq	-72(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -76(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 118:		t6 = &g
	leaq	-16(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main
	movq	%rax, -84(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 119:		param t6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 120:		t7 = call readInt, 1
	movq	-84(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -88(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 121:		a = t7
	movl	-88(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 122:		t8 = "Enter second number: "
	movq	$.LC1, -96(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 123:		param t8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 124:		t9 = call printStr, 1
	movq	-96(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -100(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 125:		t10 = &g
	leaq	-16(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main
	movq	%rax, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 126:		param t10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 127:		t11 = call readInt, 1
	movq	-24(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 128:		b = t11
	movl	-28(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 129:		t12 = "Their GCD = "
	movq	$.LC2, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 130:		param t12



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 131:		t13 = call printStr, 1
	movq	-36(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 132:		param a



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 133:		param b



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 134:		t14 = call gcd, 2
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edi
	call	gcd
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -44(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 135:		param t14



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 136:		t15 = call printInt, 1
	movl	-44(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 137:		t16 = "\n"
	movq	$.LC3, -56(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 138:		param t16



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 139:		t17 = call printStr, 1
	movq	-56(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -60(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 140:		t18 = 0
	movl	$0, -64(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 141:		return t18
	movl	-64(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_main
	jmp	.LFE1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 142:	END_main:
# function epilogue for function main
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
	.size	main, .-main
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global


