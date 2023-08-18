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
# 	 SYMBOL TABLE : ST_global		 (Parent Table : NULL)		 tot_ar_offset = -308
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                           main                          func                                                           0                             0                       ST_main
#                       printInt                          func                                                           0                             0                   ST_printInt
#                       printStr                          func                                                           0                             0                   ST_printStr
#                        readInt                          func                                                           0                             0                    ST_readInt
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main		 (Parent Table : ST_global)		 tot_ar_offset = -276
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                     ST_main_b5                         block                                                           0                             0                    ST_main_b5
#                        _retval                           int                                                           4                             0                          NULL
#                              i                           int                                                           4                             4                          NULL
#                              j                           int                                                           4                             8                          NULL
#                              n                           int                                                           4                            12                          NULL
#                            sum                           int                             0                             4                            16                          NULL
#                             t1                           int                             0                             4                            20                          NULL
#                            t11                         char*"n cube (calculated in a very stupid way) = "                             8                            24                          NULL
#                            t12                           int                                                           4                            32                          NULL
#                            t13                           int                                                           4                            36                          NULL
#                            t14                         char*                          "\n"                             8                            40                          NULL
#                            t15                           int                                                           4                            48                          NULL
#                            t16                           int                             0                             4                            52                          NULL
#                             t2                         char*           "Enter n (<= 200):"                             8                            56                          NULL
#                             t3                           int                                                           4                            64                          NULL
#                             t4                          int*                                                           8                            68                          NULL
#                             t5                           int                                                           4                            76                          NULL
#                             t6                           int                             0                             4                            80                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b5		 (Parent Table : ST_main)		 tot_ar_offset = -192
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                  ST_main_b5_b6                         block                                                           0                            84                 ST_main_b5_b6
#                             t7                           int                             0                             4                            84                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b5_b6		 (Parent Table : ST_main_b5)		 tot_ar_offset = -104
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t10                           int                                                           4                            88                          NULL
#                             t8                           int                             0                             4                            92                          NULL
#                             t9                           int                             1                             4                            96                          NULL
#                            yyy                           int                                                           4                           100                          NULL
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





# 100:	main:
# 101:		t1 = 0
# 102:		sum = t1
# 103:		t2 = "Enter n (<= 200):"
# 104:		param t2
# 105:		t3 = call printStr, 1
# 106:		t4 = &j
# 107:		param t4
# 108:		t5 = call readInt, 1
# 109:		n = t5
# 110:		t6 = 0
# 111:		i = t6
# 112:		if i < n goto 116
# 113:		goto 138
# 114:		i = i + 1
# 115:		goto 112
# 116:	main_b5: #block
# 117:		t7 = 0
# 118:		j = t7
# 119:		if j < n goto 123
# 120:		goto 114
# 121:		j = j + 1
# 122:		goto 119
# 123:	main_b5_b6: #block
# 124:		t8 = 0
# 125:		yyy = t8
# 126:		if yyy < n goto 130
# 127:		goto 121
# 128:		yyy = yyy + 1
# 129:		goto 126
# 130:		t9 = 1
# 131:		t10 = sum + t9
# 132:		sum = t10
# 133:		goto 128
# 134:	END__main_b5_b6: #block
# 135:		goto 121
# 136:	END__main_b5: #block
# 137:		goto 114
# 138:		t11 = "n cube (calculated in a very stupid way) = "
# 139:		param t11
# 140:		t12 = call printStr, 1
# 141:		param sum
# 142:		t13 = call printInt, 1
# 143:		t14 = "\n"
# 144:		param t14
# 145:		t15 = call printStr, 1
# 146:		t16 = 0
# 147:		return t16
# 148:	END_main:



#############################################################################################################################################################




#############################################################################################################################################################

	.file	"./Test_Cases/ass6_20CS10065_20CS30004_test2.c"

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 158 :: curr_table = ST_global
	.section	.rodata
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 161 :: curr_table = ST_global
.LC0:
	.string	"Enter n (<= 200):"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC1:
	.string	"n cube (calculated in a very stupid way) = "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC2:
	.string	"\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
# main
#	i : -8
#	j : -12
#	n : -16
#	sum : -20
#	t1 : -24
#	t11 : -32
#	t12 : -36
#	t13 : -40
#	t14 : -48
#	t15 : -52
#	t16 : -56
#	t2 : -64
#	t3 : -68
#	t4 : -76
#	t5 : -80
#	t6 : -84
# printInt
#	dummy : -8
# printStr
#	dummy : -12
# readInt
#	dummy : -12

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 100:	main:
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
.LFB0:
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
	subq	$276, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 101:		t1 = 0
	movl	$0, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 102:		sum = t1
	movl	-24(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 103:		t2 = "Enter n (<= 200):"
	movq	$.LC0, -64(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 104:		param t2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 105:		t3 = call printStr, 1
	movq	-64(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -68(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 106:		t4 = &j
	leaq	-12(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main
	movq	%rax, -76(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 107:		param t4



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 108:		t5 = call readInt, 1
	movq	-76(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -80(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 109:		n = t5
	movl	-80(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 110:		t6 = 0
	movl	$0, -84(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 111:		i = t6
	movl	-84(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 112:		if i < n goto 116
.L3:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main
	cmpl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main
	jl	.L1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 113:		goto 138
	jmp	.L2
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 114:		i = i + 1
.L5:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	incl	-8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 115:		goto 112
	jmp	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 116:	main_b5: #block
.L1:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 117:		t7 = 0
	movl	$0, -88(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 118:		j = t7
	movl	-88(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b5
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 119:		if j < n goto 123
.L6:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b5
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b5
	cmpl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b5
	jl	.L4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 120:		goto 114
	jmp	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 121:		j = j + 1
.L8:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b5
	incl	-12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 122:		goto 119
	jmp	.L6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 123:	main_b5_b6: #block
.L4:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 124:		t8 = 0
	movl	$0, -96(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 125:		yyy = t8
	movl	-96(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b5_b6
	movl	%eax, -104(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 126:		if yyy < n goto 130
.L9:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b5_b6
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b5_b6
	cmpl	%eax, -104(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b5_b6
	jl	.L7
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 127:		goto 121
	jmp	.L8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 128:		yyy = yyy + 1
.L10:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b5_b6
	incl	-104(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 129:		goto 126
	jmp	.L9
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 130:		t9 = 1
.L7:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b5_b6
	movl	$1, -100(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 131:		t10 = sum + t9
	movl	-20(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 386 :: curr_table = ST_main_b5_b6
	addl	-100(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 387 :: curr_table = ST_main_b5_b6
	movl	%eax, -92(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 388 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 132:		sum = t10
	movl	-92(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b5_b6
	movl	%eax, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 133:		goto 128
	jmp	.L10
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b5_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5_b6
# 134:	END__main_b5_b6: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 135:		goto 121
	jmp	.L8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 136:	END__main_b5: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 137:		goto 114
	jmp	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 138:		t11 = "n cube (calculated in a very stupid way) = "
.L2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movq	$.LC1, -32(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 139:		param t11



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 140:		t12 = call printStr, 1
	movq	-32(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 141:		param sum



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 142:		t13 = call printInt, 1
	movl	-20(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 143:		t14 = "\n"
	movq	$.LC2, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 144:		param t14



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 145:		t15 = call printStr, 1
	movq	-48(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 146:		t16 = 0
	movl	$0, -56(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 147:		return t16
	movl	-56(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_main
	jmp	.LFE0
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 148:	END_main:
# function epilogue for function main
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
	.size	main, .-main
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global


