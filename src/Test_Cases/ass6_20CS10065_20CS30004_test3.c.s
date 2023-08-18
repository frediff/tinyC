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
# 	 SYMBOL TABLE : ST_global		 (Parent Table : NULL)		 tot_ar_offset = -864
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                           main                          func                                                           0                             0                       ST_main
#                              n                           int                            10                             4                             0                          NULL
#                       printInt                          func                                                           0                             4                   ST_printInt
#                       printStr                          func                                                           0                             4                   ST_printStr
#                        readInt                          func                                                           0                             4                    ST_readInt
#                             t1                           int                            10                             4                             4                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main		 (Parent Table : ST_global)		 tot_ar_offset = -824
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                              A                array(10, int)                                                          40                             0                          NULL
#                     ST_main_b5                         block                                                           0                            40                    ST_main_b5
#                     ST_main_b6                         block                                                           0                            40                    ST_main_b6
#                     ST_main_b9                         block                                                           0                            40                    ST_main_b9
#                        _retval                           int                                                           4                            40                          NULL
#                              i                           int                             0                             4                            44                          NULL
#                              j                           int                                                           4                            48                          NULL
#                              k                           int                                                           4                            52                          NULL
#                            t10                           int                             0                             4                            56                          NULL
#                             t2                           int                            10                             4                            60                          NULL
#                            t23                         char*"They form the sorted sequence: "                             8                            64                          NULL
#                            t24                           int                                                           4                            72                          NULL
#                            t25                           int                             0                             4                            76                          NULL
#                             t3                           int                             0                             4                            80                          NULL
#                            t33                         char*                          "\n"                             8                            84                          NULL
#                            t34                           int                                                           4                            92                          NULL
#                            t35                           int                             0                             4                            96                          NULL
#                             t4                         char*"Enter 10 integers (one in each line):\n"                             8                           100                          NULL
#                             t5                           int                                                           4                           108                          NULL
#                             t6                           int                             0                             4                           112                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b5		 (Parent Table : ST_main)		 tot_ar_offset = -132
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                             t7                           int                                                           4                           116                          NULL
#                             t8                          int*                                                           8                           120                          NULL
#                             t9                           int                                                           4                           128                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b6		 (Parent Table : ST_main)		 tot_ar_offset = -428
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                  ST_main_b6_b7                         block                                                           0                           116                 ST_main_b6_b7
#                            t11                           int                             1                             4                           116                          NULL
#                            t12                           int                                                           4                           120                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b6_b7		 (Parent Table : ST_main_b6)		 tot_ar_offset = -304
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#               ST_main_b6_b7_b8                         block                                                           0                           124              ST_main_b6_b7_b8
#                            t13                           int                                                           4                           124                          NULL
#                            t14                           int                                                           4                           128                          NULL
#                            t15                           int                                                           4                           132                          NULL
#                            t16                           int                                                           4                           136                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b6_b7_b8		 (Parent Table : ST_main_b6_b7)		 tot_ar_offset = -164
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t17                           int                                                           4                           140                          NULL
#                            t18                           int                                                           4                           144                          NULL
#                            t19                           int                                                           4                           148                          NULL
#                            t20                           int                                                           4                           152                          NULL
#                            t21                           int                                                           4                           156                          NULL
#                            t22                           int                                                           4                           160                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main_b9		 (Parent Table : ST_main)		 tot_ar_offset = -148
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                            t26                           int                                                           4                           116                          NULL
#                            t27                           int                                                           4                           120                          NULL
#                            t28                           int                                                           4                           124                          NULL
#                            t29                           int                             1                             4                           128                          NULL
#                            t30                           int                                                           4                           132                          NULL
#                            t31                         char*                          ", "                             8                           136                          NULL
#                            t32                           int                                                           4                           144                          NULL
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





# 100:		t1 = 10
# 101:		n = t1
# 102:	main:
# 103:		t2 = 10
# 104:		t3 = 0
# 105:		i = t3
# 106:		t4 = "Enter 10 integers (one in each line):\n"
# 107:		param t4
# 108:		t5 = call printStr, 1
# 109:		t6 = 0
# 110:		i = t6
# 111:		if i < n goto 115
# 112:		goto 123
# 113:		i = i + 1
# 114:		goto 111
# 115:	main_b5: #block
# 116:		t7 = i * 4
# 117:		t8 = &k
# 118:		param t8
# 119:		t9 = call readInt, 1
# 120:		A[t7] = t9
# 121:	END__main_b5: #block
# 122:		goto 113
# 123:		t10 = 0
# 124:		i = t10
# 125:		if i < n goto 129
# 126:		goto 160
# 127:		i = i + 1
# 128:		goto 125
# 129:	main_b6: #block
# 130:		t11 = 1
# 131:		t12 = i + t11
# 132:		j = t12
# 133:		if j < n goto 137
# 134:		goto 127
# 135:		j = j + 1
# 136:		goto 133
# 137:	main_b6_b7: #block
# 138:		t13 = i * 4
# 139:		t14 = A[t13]
# 140:		t15 = j * 4
# 141:		t16 = A[t15]
# 142:		if t14 > t16 goto 144
# 143:		goto 135
# 144:	main_b6_b7_b8: #block
# 145:		t17 = i * 4
# 146:		t18 = A[t17]
# 147:		k = t18
# 148:		t19 = i * 4
# 149:		t20 = j * 4
# 150:		t21 = A[t20]
# 151:		A[t19] = t21
# 152:		t22 = j * 4
# 153:		A[t22] = k
# 154:	END__main_b6_b7_b8: #block
# 155:		goto 135
# 156:	END__main_b6_b7: #block
# 157:		goto 135
# 158:	END__main_b6: #block
# 159:		goto 127
# 160:		t23 = "They form the sorted sequence: "
# 161:		param t23
# 162:		t24 = call printStr, 1
# 163:		t25 = 0
# 164:		i = t25
# 165:		if i < n goto 169
# 166:		goto 184
# 167:		i = i + 1
# 168:		goto 165
# 169:	main_b9: #block
# 170:		t26 = i * 4
# 171:		t27 = A[t26]
# 172:		param t27
# 173:		t28 = call printInt, 1
# 174:		t29 = 1
# 175:		t30 = n - t29
# 176:		if i < t30 goto 178
# 177:		goto 167
# 178:		t31 = ", "
# 179:		param t31
# 180:		t32 = call printStr, 1
# 181:		goto 167
# 182:	END__main_b9: #block
# 183:		goto 167
# 184:		t33 = "\n"
# 185:		param t33
# 186:		t34 = call printStr, 1
# 187:		t35 = 0
# 188:		return t35
# 189:	END_main:



#############################################################################################################################################################




#############################################################################################################################################################

	.file	"./Test_Cases/ass6_20CS10065_20CS30004_test3.c"

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 158 :: curr_table = ST_global
	.section	.rodata
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 161 :: curr_table = ST_global
.LC0:
	.string	"Enter 10 integers (one in each line):\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC1:
	.string	"They form the sorted sequence: "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC2:
	.string	", "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC3:
	.string	"\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
# main
#	A : -40
#	i : -48
#	j : -52
#	k : -56
#	t10 : -60
#	t2 : -64
#	t23 : -72
#	t24 : -76
#	t25 : -80
#	t3 : -84
#	t33 : -92
#	t34 : -96
#	t35 : -100
#	t4 : -108
#	t5 : -112
#	t6 : -116
# printInt
#	dummy : -8
# printStr
#	dummy : -12
# readInt
#	dummy : -12

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
# 102:	main:
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
	subq	$824, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 103:		t2 = 10
	movl	$10, -64(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 104:		t3 = 0
	movl	$0, -84(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 105:		i = t3
	movl	-84(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 106:		t4 = "Enter 10 integers (one in each line):\n"
	movq	$.LC0, -108(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 107:		param t4



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 108:		t5 = call printStr, 1
	movq	-108(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -112(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 109:		t6 = 0
	movl	$0, -116(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 110:		i = t6
	movl	-116(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 111:		if i < n goto 115
.L3:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	n, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main
	cmpl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main
	jl	.L1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 112:		goto 123
	jmp	.L2
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 113:		i = i + 1
.L4:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	incl	-48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 114:		goto 111
	jmp	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 115:	main_b5: #block
.L1:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 116:		t7 = i * 4
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b5
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b5
	movl	%eax, -120(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 117:		t8 = &k
	leaq	-56(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main_b5
	movq	%rax, -128(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 118:		param t8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 119:		t9 = call readInt, 1
	movq	-128(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b5
	movl	%eax, -132(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 120:		A[t7] = t9
	movl	-120(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 424 :: curr_table = ST_main_b5
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 425 :: curr_table = ST_main_b5
	movl	-132(%rbp), %ebx
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 431 :: curr_table = ST_main_b5
	movl	%ebx, -40(%rbp, %rax, 1)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 432 :: curr_table = ST_main_b5



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b5
# 121:	END__main_b5: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 122:		goto 113
	jmp	.L4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 123:		t10 = 0
.L2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	$0, -60(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 124:		i = t10
	movl	-60(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 125:		if i < n goto 129
.L7:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	n, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main
	cmpl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main
	jl	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 126:		goto 160
	jmp	.L6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 127:		i = i + 1
.L9:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	incl	-48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 128:		goto 125
	jmp	.L7
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 129:	main_b6: #block
.L5:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 130:		t11 = 1
	movl	$1, -120(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 131:		t12 = i + t11
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 386 :: curr_table = ST_main_b6
	addl	-120(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 387 :: curr_table = ST_main_b6
	movl	%eax, -124(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 388 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 132:		j = t12
	movl	-124(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b6
	movl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 133:		if j < n goto 137
.L10:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b6
	movl	n, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b6
	cmpl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b6
	jl	.L8
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 134:		goto 127
	jmp	.L9
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 135:		j = j + 1
.L12:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b6
	incl	-52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 136:		goto 133
	jmp	.L10
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 137:	main_b6_b7: #block
.L8:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 138:		t13 = i * 4
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b6_b7
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b6_b7
	movl	%eax, -128(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 139:		t14 = A[t13]
	movl	-128(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 436 :: curr_table = ST_main_b6_b7
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 437 :: curr_table = ST_main_b6_b7
	movl	-40(%rbp, %rax, 1), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 444 :: curr_table = ST_main_b6_b7
	movl	%eax, -132(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 445 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 140:		t15 = j * 4
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b6_b7
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b6_b7
	movl	%eax, -136(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 141:		t16 = A[t15]
	movl	-136(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 436 :: curr_table = ST_main_b6_b7
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 437 :: curr_table = ST_main_b6_b7
	movl	-40(%rbp, %rax, 1), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 444 :: curr_table = ST_main_b6_b7
	movl	%eax, -140(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 445 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 142:		if t14 > t16 goto 144
	movl	-140(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b6_b7
	cmpl	%eax, -132(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b6_b7
	jg	.L11
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 143:		goto 135
	jmp	.L12
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 144:	main_b6_b7_b8: #block
.L11:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 145:		t17 = i * 4
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b6_b7_b8
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -144(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 146:		t18 = A[t17]
	movl	-144(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 436 :: curr_table = ST_main_b6_b7_b8
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 437 :: curr_table = ST_main_b6_b7_b8
	movl	-40(%rbp, %rax, 1), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 444 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -148(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 445 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 147:		k = t18
	movl	-148(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -56(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 148:		t19 = i * 4
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b6_b7_b8
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -152(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 149:		t20 = j * 4
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b6_b7_b8
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -156(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 150:		t21 = A[t20]
	movl	-156(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 436 :: curr_table = ST_main_b6_b7_b8
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 437 :: curr_table = ST_main_b6_b7_b8
	movl	-40(%rbp, %rax, 1), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 444 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -160(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 445 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 151:		A[t19] = t21
	movl	-152(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 424 :: curr_table = ST_main_b6_b7_b8
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 425 :: curr_table = ST_main_b6_b7_b8
	movl	-160(%rbp), %ebx
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 431 :: curr_table = ST_main_b6_b7_b8
	movl	%ebx, -40(%rbp, %rax, 1)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 432 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 152:		t22 = j * 4
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b6_b7_b8
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b6_b7_b8
	movl	%eax, -164(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 153:		A[t22] = k
	movl	-164(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 424 :: curr_table = ST_main_b6_b7_b8
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 425 :: curr_table = ST_main_b6_b7_b8
	movl	-56(%rbp), %ebx
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 431 :: curr_table = ST_main_b6_b7_b8
	movl	%ebx, -40(%rbp, %rax, 1)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 432 :: curr_table = ST_main_b6_b7_b8



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7_b8
# 154:	END__main_b6_b7_b8: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 155:		goto 135
	jmp	.L12
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6_b7



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6_b7
# 156:	END__main_b6_b7: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 157:		goto 135
	jmp	.L12
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b6



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b6
# 158:	END__main_b6: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 159:		goto 127
	jmp	.L9
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 160:		t23 = "They form the sorted sequence: "
.L6:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movq	$.LC1, -72(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 161:		param t23



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 162:		t24 = call printStr, 1
	movq	-72(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -76(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 163:		t25 = 0
	movl	$0, -80(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 164:		i = t25
	movl	-80(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 165:		if i < n goto 169
.L15:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movl	n, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main
	cmpl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main
	jl	.L13
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 166:		goto 184
	jmp	.L14
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 167:		i = i + 1
.L17:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	incl	-48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 384 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 168:		goto 165
	jmp	.L15
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 169:	main_b9: #block
.L13:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 170:		t26 = i * 4
	movl	-48(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_main_b9
	imull	$4, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_main_b9
	movl	%eax, -120(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 171:		t27 = A[t26]
	movl	-120(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 436 :: curr_table = ST_main_b9
	cltq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 437 :: curr_table = ST_main_b9
	movl	-40(%rbp, %rax, 1), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 444 :: curr_table = ST_main_b9
	movl	%eax, -124(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 445 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 172:		param t27



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 173:		t28 = call printInt, 1
	movl	-124(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b9
	movl	%eax, -128(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 174:		t29 = 1
	movl	$1, -132(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 175:		t30 = n - t29
	movl	n, %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 398 :: curr_table = ST_main_b9
	subl	-132(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 399 :: curr_table = ST_main_b9
	movl	%eax, -136(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 400 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 176:		if i < t30 goto 178
	movl	-136(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_main_b9
	cmpl	%eax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_main_b9
	jl	.L16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 177:		goto 167
	jmp	.L17
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 178:		t31 = ", "
.L16:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main_b9
	movq	$.LC2, -144(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 179:		param t31



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 180:		t32 = call printStr, 1
	movq	-144(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main_b9
	movl	%eax, -148(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 181:		goto 167
	jmp	.L17
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main_b9



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main_b9
# 182:	END__main_b9: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 183:		goto 167
	jmp	.L17
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 184:		t33 = "\n"
.L14:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_main
	movq	$.LC3, -92(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 185:		param t33



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 186:		t34 = call printStr, 1
	movq	-92(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -96(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 187:		t35 = 0
	movl	$0, -100(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 188:		return t35
	movl	-100(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_main
	jmp	.LFE0
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 189:	END_main:
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


