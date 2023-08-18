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
# 	 SYMBOL TABLE : ST_global		 (Parent Table : NULL)		 tot_ar_offset = -332
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                           main                          func                                                           0                             0                       ST_main
#                              n                           int                            10                             4                             0                          NULL
#                       printInt                          func                                                           0                             4                   ST_printInt
#                       printStr                          func                                                           0                             4                   ST_printStr
#                        readInt                          func                                                           0                             4                    ST_readInt
#                           swap                          func                                                           0                             4                       ST_swap
#                             t1                           int                            10                             4                             4                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main		 (Parent Table : ST_global)		 tot_ar_offset = -256
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                     ST_main_b6                         block                                                           0                             0                    ST_main_b6
#                        _retval                           int                                                           4                             0                          NULL
#                              k                           int                                                           4                             4                          NULL
#                            min                           int                       1010101                             4                             8                          NULL
#                            t14                           int                       1010101                             4                            12                          NULL
#                            t15                         char*                      "min = "                             8                            16                          NULL
#                            t16                           int                                                           4                            24                          NULL
#                            t17                           int                                                           4                            28                          NULL
#                            t18                         char*                          "\n"                             8                            32                          NULL
#                            t19                           int                                                           4                            40                          NULL
#                            t20                           int                             0                             4                            44                          NULL
#                             t6                           int                       1010101                             4                            48                          NULL
#                             t7                         char*"Enter integers in each line, (to stop enter 1010101)\n"                             8                            52                          NULL
#                             t8                           int                                                           4                            60                          NULL
#                              x                           int                                                           4                            64                          NULL
#                              y                           int                                                           4                            68                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b6		 (Parent Table : ST_main)		 tot_ar_offset = -184
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                  ST_main_b6_b7                         block                                                           0                            72                 ST_main_b6_b7
#                            t10                           int                                                           4                            72                          NULL
#                             t9                          int*                                                           8                            76                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b6_b7		 (Parent Table : ST_main_b6)		 tot_ar_offset = -100
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t11                          int*                                                           8                            84                          NULL
#                            t12                          int*                                                           8                            92                          NULL
#                            t13                          void                                                           0                           100                          NULL
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
# 	 SYMBOL TABLE : ST_swap		 (Parent Table : ST_global)		 tot_ar_offset = -36
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                             t2                           int                                                           4                             0                          NULL
#                             t3                           int                                                           4                             4                          NULL
#                             t4                           int                                                           4                             8                          NULL
#                             t5                           int                                                           4                            12                          NULL
#                              x                          int*                                                           8                            16                          NULL
#                              y                          int*                                                           8                            24                          NULL
#                              z                           int                                                           4                            32                          NULL
# ##############################################################################################################################################################################################





# 100:		t1 = 10
# 101:		n = t1
# 102:	swap:
# 103:		t2 = *x
# 104:		z = t2
# 105:		t3 = *x
# 106:		t4 = *y
# 107:		*x = t4
# 108:		t5 = *y
# 109:		*y = z
# 110:	END_swap:
# 111:	main:
# 112:		t6 = 1010101
# 113:		min = t6
# 114:		t7 = "Enter integers in each line, (to stop enter 1010101)\n"
# 115:		param t7
# 116:		t8 = call printStr, 1
# 117:	main_b6: #block
# 118:		t9 = &k
# 119:		param t9
# 120:		t10 = call readInt, 1
# 121:		y = t10
# 122:		x = y
# 123:		if x < min goto 125
# 124:		goto 134
# 125:	main_b6_b7: #block
# 126:		t11 = &min
# 127:		t12 = &x
# 128:		param t11
# 129:		param t12
# 130:		call swap, 2
# 131:	END__main_b6_b7: #block
# 132:		goto 134
# 133:	END__main_b6: #block
# 134:		t14 = 1010101
# 135:		if y != t14 goto 117
# 136:		goto 137
# 137:		t15 = "min = "
# 138:		param t15
# 139:		t16 = call printStr, 1
# 140:		param min
# 141:		t17 = call printInt, 1
# 142:		t18 = "\n"
# 143:		param t18
# 144:		t19 = call printStr, 1
# 145:		t20 = 0
# 146:		return t20
# 147:	END_main:



#############################################################################################################################################################




#############################################################################################################################################################

	.file	"./Test_Cases/ass6_20CS10065_20CS30004_test12.c"

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 158 :: curr_table = ST_global
	.section	.rodata
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 161 :: curr_table = ST_global
.LC0:
	.string	"Enter integers in each line, (to stop enter 1010101)\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC1:
	.string	"min = "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC2:
	.string	"\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
# main
#	k : -8
#	min : -12
#	t14 : -16
#	t15 : -24
#	t16 : -28
#	t17 : -32
#	t18 : -40
#	t19 : -44
#	t20 : -48
#	t6 : -52
#	t7 : -60
#	t8 : -64
#	x : -68
#	y : -72
# printInt
#	dummy : -8
# printStr
#	dummy : -12
# readInt
#	dummy : -12
# swap
#	t2 : -4
#	t3 : -8
#	t4 : -12
#	t5 : -16
#	x : -24
#	y : -32
#	z : -36

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 100:		t1 = 10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 101:		n = t1
	.globl	n
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 251 :: curr_table = ST_global
	.data
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 252 :: curr_table = ST_global
	.align	4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 253 :: curr_table = ST_global
	.type	n, @object
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 254 :: curr_table = ST_global
	.size	n, 4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 255 :: curr_table = ST_global
n:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 256 :: curr_table = ST_global
	.long	10
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 257 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 102:	swap:
	.text
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 203 :: curr_table = ST_global
# function prologue for function swap
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 211 :: curr_table = ST_swap
	.global	swap
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 212 :: curr_table = ST_swap
	.type	swap, @function
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 213 :: curr_table = ST_swap
swap:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 214 :: curr_table = ST_swap
.LFB0:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 215 :: curr_table = ST_swap
	.cfi_startproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 216 :: curr_table = ST_swap
	pushq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 217 :: curr_table = ST_swap
	.cfi_def_cfa_offset 16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 218 :: curr_table = ST_swap
	.cfi_offset 6, -16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 219 :: curr_table = ST_swap
	movq	%rsp, %rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 220 :: curr_table = ST_swap
	.cfi_def_cfa_register	6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 221 :: curr_table = ST_swap
	subq	$36, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_swap
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 103:		t2 = *x
	movq	-24(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 415 :: curr_table = ST_swap
	movl	(%rax), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 416 :: curr_table = ST_swap
	movl	%eax, -4(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 417 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 104:		z = t2
	movl	-4(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_swap
	movl	%eax, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 105:		t3 = *x
	movq	-24(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 415 :: curr_table = ST_swap
	movl	(%rax), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 416 :: curr_table = ST_swap
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 417 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 106:		t4 = *y
	movq	-32(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 415 :: curr_table = ST_swap
	movl	(%rax), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 416 :: curr_table = ST_swap
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 417 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 107:		*x = t4
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 419 :: curr_table = ST_swap
	movq	-24(%rbp), %rbx
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 420 :: curr_table = ST_swap
	movl	%eax, (%rbx)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 421 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 108:		t5 = *y
	movq	-32(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 415 :: curr_table = ST_swap
	movl	(%rax), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 416 :: curr_table = ST_swap
	movl	%eax, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 417 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 109:		*y = z
	movl	-36(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 419 :: curr_table = ST_swap
	movq	-32(%rbp), %rbx
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 420 :: curr_table = ST_swap
	movl	%eax, (%rbx)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 421 :: curr_table = ST_swap



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_swap
# 110:	END_swap:
# function epilogue for function swap
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
	.size	swap, .-swap
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 111:	main:
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
	subq	$256, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 112:		t6 = 1010101
	movl	$1010101, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 113:		min = t6
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 114:		t7 = "Enter integers in each line, (to stop enter 1010101)\n"
	movq	$.LC0, -60(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 115:		param t7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 116:		t8 = call printStr, 1
	movq	-60(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -64(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 117:	main_b6: #block
.L4:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 118:		t9 = &k
	leaq	-8(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main_b6
	movq	%rax, -84(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 119:		param t9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 120:		t10 = call readInt, 1
	movq	-84(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b6
	movl	%eax, -76(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 121:		y = t10
	movl	-76(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b6
	movl	%eax, -72(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 122:		x = y
	movl	-72(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b6
	movl	%eax, -68(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 123:		if x < min goto 125
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b6
	cmpl	%eax, -68(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b6
	jl	.L2
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 124:		goto 134
	jmp	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 125:	main_b6_b7: #block
.L2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 126:		t11 = &min
	leaq	-12(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main_b6_b7
	movq	%rax, -92(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 127:		t12 = &x
	leaq	-68(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main_b6_b7
	movq	%rax, -100(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 128:		param t11



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 129:		param t12



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 130:		call swap, 2
	movq	-100(%rbp), %rsi
	movq	-92(%rbp), %rdi
	call	swap
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 131:	END__main_b6_b7: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 132:		goto 134
	jmp	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 133:	END__main_b6: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 134:		t14 = 1010101
.L3:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	$1010101, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 135:		if y != t14 goto 117
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main
	cmpl	%eax, -72(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main
	jne	.L4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 136:		goto 137
	jmp	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 137:		t15 = "min = "
.L5:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movq	$.LC1, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 138:		param t15



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 139:		t16 = call printStr, 1
	movq	-24(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 140:		param min



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 141:		t17 = call printInt, 1
	movl	-12(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -32(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 142:		t18 = "\n"
	movq	$.LC2, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 143:		param t18



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 144:		t19 = call printStr, 1
	movq	-40(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -44(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 145:		t20 = 0
	movl	$0, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 146:		return t20
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_main
	jmp	.LFE1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 147:	END_main:
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


