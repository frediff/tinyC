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
#                     fast_power                          func                                                           0                             0                 ST_fast_power
#                           main                          func                                                           0                             0                       ST_main
#                       printInt                          func                                                           0                             0                   ST_printInt
#                       printStr                          func                                                           0                             0                   ST_printStr
#                        readInt                          func                                                           0                             0                    ST_readInt
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_fast_power		 (Parent Table : ST_global)		 tot_ar_offset = -148
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#               ST_fast_power_b2                         block                                                           0                             0              ST_fast_power_b2
#                        _retval                           int                                                           4                             0                          NULL
#                              a                           int                                                           4                             4                          NULL
#                              b                           int                                                           4                             8                          NULL
#                           mult                           int                                                           4                            12                          NULL
#                           prod                           int                             1                             4                            16                          NULL
#                            rem                           int                                                           4                            20                          NULL
#                             t1                           int                             1                             4                            24                          NULL
#                             t2                           int                             0                             4                            28                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_fast_power_b2		 (Parent Table : ST_fast_power)		 tot_ar_offset = -116
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#            ST_fast_power_b2_b3                         block                                                           0                            32           ST_fast_power_b2_b3
#                             t3                           int                             2                             4                            32                          NULL
#                             t4                           int                                                           4                            36                          NULL
#                             t5                           int                             1                             4                            40                          NULL
#                             t7                           int                             2                             4                            44                          NULL
#                             t8                           int                                                           4                            48                          NULL
#                             t9                           int                                                           4                            52                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_fast_power_b2_b3		 (Parent Table : ST_fast_power_b2)		 tot_ar_offset = -60
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                             t6                           int                                                           4                            56                          NULL
# ##############################################################################################################################################################################################




# ==============================================================================================================================================================================================
# 	 SYMBOL TABLE : ST_main		 (Parent Table : ST_global)		 tot_ar_offset = -144
# ..............................................................................................................................................................................................

#                           Name                          Type                 Initial Value                          Size                        Offset                 Nested Table
# ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#                        _retval                           int                                                           4                             0                          NULL
#                              a                           int                                                           4                             4                          NULL
#                              b                           int                                                           4                             8                          NULL
#                              c                           int                                                           4                            12                          NULL
#                            t10                         char*"enter 2 integers (one in each line):\n"                             8                            16                          NULL
#                            t11                           int                                                           4                            24                          NULL
#                            t12                          int*                                                           8                            28                          NULL
#                            t13                           int                                                           4                            36                          NULL
#                            t14                          int*                                                           8                            40                          NULL
#                            t15                           int                                                           4                            48                          NULL
#                            t16                         char*          "first number    : "                             8                            52                          NULL
#                            t17                           int                                                           4                            60                          NULL
#                            t18                           int                                                           4                            64                          NULL
#                            t19                         char*                          ", "                             8                            68                          NULL
#                            t20                           int                                                           4                            76                          NULL
#                            t21                         char*        "\nsecond number   : "                             8                            80                          NULL
#                            t22                           int                                                           4                            88                          NULL
#                            t23                           int                                                           4                            92                          NULL
#                            t24                         char*                          ", "                             8                            96                          NULL
#                            t25                           int                                                           4                           104                          NULL
#                            t26                         char*    "\na raised to power b : "                             8                           108                          NULL
#                            t27                           int                                                           4                           116                          NULL
#                            t28                           int                                                           4                           120                          NULL
#                            t29                           int                                                           4                           124                          NULL
#                            t30                         char*                          "\n"                             8                           128                          NULL
#                            t31                           int                                                           4                           136                          NULL
#                            t32                           int                             0                             4                           140                          NULL
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





# 100:	fast_power:
# 101:		t1 = 1
# 102:		prod = t1
# 103:		mult = a
# 104:		t2 = 0
# 105:		if b > t2 goto 107
# 106:		goto 126
# 107:	fast_power_b2: #block
# 108:		t3 = 2
# 109:		t4 = b % t3
# 110:		rem = t4
# 111:		t5 = 1
# 112:		if rem == t5 goto 114
# 113:		goto 119
# 114:	fast_power_b2_b3: #block
# 115:		t6 = prod * mult
# 116:		prod = t6
# 117:	END__fast_power_b2_b3: #block
# 118:		goto 119
# 119:		t7 = 2
# 120:		t8 = b / t7
# 121:		b = t8
# 122:		t9 = mult * mult
# 123:		mult = t9
# 124:	END__fast_power_b2: #block
# 125:		goto 104
# 126:		return prod
# 127:	END_fast_power:
# 128:	main:
# 129:		t10 = "enter 2 integers (one in each line):\n"
# 130:		param t10
# 131:		t11 = call printStr, 1
# 132:		t12 = &c
# 133:		param t12
# 134:		t13 = call readInt, 1
# 135:		a = t13
# 136:		t14 = &c
# 137:		param t14
# 138:		t15 = call readInt, 1
# 139:		b = t15
# 140:		t16 = "first number    : "
# 141:		param t16
# 142:		t17 = call printStr, 1
# 143:		param a
# 144:		t18 = call printInt, 1
# 145:		t19 = ", "
# 146:		param t19
# 147:		t20 = call printStr, 1
# 148:		t21 = "\nsecond number   : "
# 149:		param t21
# 150:		t22 = call printStr, 1
# 151:		param b
# 152:		t23 = call printInt, 1
# 153:		t24 = ", "
# 154:		param t24
# 155:		t25 = call printStr, 1
# 156:		t26 = "\na raised to power b : "
# 157:		param t26
# 158:		t27 = call printStr, 1
# 159:		param a
# 160:		param b
# 161:		t28 = call fast_power, 2
# 162:		param t28
# 163:		t29 = call printInt, 1
# 164:		t30 = "\n"
# 165:		param t30
# 166:		t31 = call printStr, 1
# 167:		t32 = 0
# 168:		return t32
# 169:	END_main:



#############################################################################################################################################################




#############################################################################################################################################################

	.file	"./Test_Cases/ass6_20CS10065_20CS30004_test1.c"

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 158 :: curr_table = ST_global
	.section	.rodata
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 161 :: curr_table = ST_global
.LC0:
	.string	"enter 2 integers (one in each line):\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC1:
	.string	"first number    : "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC2:
	.string	", "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC3:
	.string	"\nsecond number   : "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC4:
	.string	", "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC5:
	.string	"\na raised to power b : "
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
.LC6:
	.string	"\n"
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 163 :: curr_table = ST_global
# fast_power
#	a : -8
#	b : -12
#	mult : -16
#	prod : -20
#	rem : -24
#	t1 : -28
#	t2 : -32
# main
#	a : -8
#	b : -12
#	c : -16
#	t10 : -24
#	t11 : -28
#	t12 : -36
#	t13 : -40
#	t14 : -48
#	t15 : -52
#	t16 : -60
#	t17 : -64
#	t18 : -68
#	t19 : -76
#	t20 : -80
#	t21 : -88
#	t22 : -92
#	t23 : -96
#	t24 : -104
#	t25 : -108
#	t26 : -116
#	t27 : -120
#	t28 : -124
#	t29 : -128
#	t30 : -136
#	t31 : -140
#	t32 : -144
# printInt
#	dummy : -8
# printStr
#	dummy : -12
# readInt
#	dummy : -12

#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 100:	fast_power:
	.text
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 203 :: curr_table = ST_global
# function prologue for function fast_power
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 211 :: curr_table = ST_fast_power
	.global	fast_power
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 212 :: curr_table = ST_fast_power
	.type	fast_power, @function
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 213 :: curr_table = ST_fast_power
fast_power:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 214 :: curr_table = ST_fast_power
.LFB0:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 215 :: curr_table = ST_fast_power
	.cfi_startproc
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 216 :: curr_table = ST_fast_power
	pushq	%rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 217 :: curr_table = ST_fast_power
	.cfi_def_cfa_offset 16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 218 :: curr_table = ST_fast_power
	.cfi_offset 6, -16
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 219 :: curr_table = ST_fast_power
	movq	%rsp, %rbp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 220 :: curr_table = ST_fast_power
	.cfi_def_cfa_register	6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 221 :: curr_table = ST_fast_power
	subq	$148, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_fast_power
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 101:		t1 = 1
	movl	$1, -28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 102:		prod = t1
	movl	-28(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_fast_power
	movl	%eax, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 103:		mult = a
	movl	-8(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_fast_power
	movl	%eax, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 104:		t2 = 0
.L6:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_fast_power
	movl	$0, -32(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 105:		if b > t2 goto 107
	movl	-32(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_fast_power
	cmpl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_fast_power
	jg	.L2
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 106:		goto 126
	jmp	.L3
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 107:	fast_power_b2: #block
.L2:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 108:		t3 = 2
	movl	$2, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 109:		t4 = b % t3
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 407 :: curr_table = ST_fast_power_b2
	cdq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 408 :: curr_table = ST_fast_power_b2
	idivl	-36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 409 :: curr_table = ST_fast_power_b2
	movl	%edx, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 410 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 110:		rem = t4
	movl	-40(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_fast_power_b2
	movl	%eax, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 111:		t5 = 1
	movl	$1, -44(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 112:		if rem == t5 goto 114
	movl	-44(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 379 :: curr_table = ST_fast_power_b2
	cmpl	%eax, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 380 :: curr_table = ST_fast_power_b2
	je	.L4
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 381 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 113:		goto 119
	jmp	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 114:	fast_power_b2_b3: #block
.L4:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 196 :: curr_table = ST_fast_power_b2_b3



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2_b3
# 115:		t6 = prod * mult
	movl	-20(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_fast_power_b2_b3
	imull	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_fast_power_b2_b3
	movl	%eax, -60(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_fast_power_b2_b3



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2_b3
# 116:		prod = t6
	movl	-60(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_fast_power_b2_b3
	movl	%eax, -20(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_fast_power_b2_b3



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2_b3
# 117:	END__fast_power_b2_b3: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 118:		goto 119
	jmp	.L5
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 119:		t7 = 2
.L5:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_fast_power_b2
	movl	$2, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 120:		t8 = b / t7
	movl	-12(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 407 :: curr_table = ST_fast_power_b2
	cdq
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 408 :: curr_table = ST_fast_power_b2
	idivl	-48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 409 :: curr_table = ST_fast_power_b2
	movl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 410 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 121:		b = t8
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_fast_power_b2
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 122:		t9 = mult * mult
	movl	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 403 :: curr_table = ST_fast_power_b2
	imull	-16(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 404 :: curr_table = ST_fast_power_b2
	movl	%eax, -56(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 405 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 123:		mult = t9
	movl	-56(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_fast_power_b2
	movl	%eax, -16(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_fast_power_b2



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power_b2
# 124:	END__fast_power_b2: #block



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 125:		goto 104
	jmp	.L6
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 344 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 126:		return prod
.L3:
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 276 :: curr_table = ST_fast_power
	movl	-20(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_fast_power
	jmp	.LFE0
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_fast_power



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_fast_power
# 127:	END_fast_power:
# function epilogue for function fast_power
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
	.size	fast_power, .-fast_power
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 238 :: curr_table = ST_global



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_global
# 128:	main:
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
	subq	$144, %rsp
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 222 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 129:		t10 = "enter 2 integers (one in each line):\n"
	movq	$.LC0, -24(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 130:		param t10



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 131:		t11 = call printStr, 1
	movq	-24(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -28(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 132:		t12 = &c
	leaq	-16(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main
	movq	%rax, -36(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 133:		param t12



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 134:		t13 = call readInt, 1
	movq	-36(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -40(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 135:		a = t13
	movl	-40(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -8(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 136:		t14 = &c
	leaq	-16(%rbp), %rax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 412 :: curr_table = ST_main
	movq	%rax, -48(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 413 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 137:		param t14



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 138:		t15 = call readInt, 1
	movq	-48(%rbp), %rdi
	call	readInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -52(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 139:		b = t15
	movl	-52(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 291 :: curr_table = ST_main
	movl	%eax, -12(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 292 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 140:		t16 = "first number    : "
	movq	$.LC1, -60(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 141:		param t16



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 142:		t17 = call printStr, 1
	movq	-60(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -64(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 143:		param a



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 144:		t18 = call printInt, 1
	movl	-8(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -68(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 145:		t19 = ", "
	movq	$.LC2, -76(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 146:		param t19



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 147:		t20 = call printStr, 1
	movq	-76(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -80(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 148:		t21 = "\nsecond number   : "
	movq	$.LC3, -88(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 149:		param t21



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 150:		t22 = call printStr, 1
	movq	-88(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -92(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 151:		param b



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 152:		t23 = call printInt, 1
	movl	-12(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -96(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 153:		t24 = ", "
	movq	$.LC4, -104(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 154:		param t24



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 155:		t25 = call printStr, 1
	movq	-104(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -108(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 156:		t26 = "\na raised to power b : "
	movq	$.LC5, -116(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 157:		param t26



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 158:		t27 = call printStr, 1
	movq	-116(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -120(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 159:		param a



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 160:		param b



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 161:		t28 = call fast_power, 2
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edi
	call	fast_power
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -124(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 162:		param t28



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 163:		t29 = call printInt, 1
	movl	-124(%rbp), %edi
	call	printInt
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -128(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 164:		t30 = "\n"
	movq	$.LC6, -136(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 301 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 165:		param t30



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 166:		t31 = call printStr, 1
	movq	-136(%rbp), %rdi
	call	printStr
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 312 :: curr_table = ST_main
	movl	%eax, -140(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 321 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 167:		t32 = 0
	movl	$0, -144(%rbp)
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 281 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 168:		return t32
	movl	-144(%rbp), %eax
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 335 :: curr_table = ST_main
	jmp	.LFE1
#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 342 :: curr_table = ST_main



#			 LINE(ass6_20CS10065_20CS30004_target_translator.cxx) : 191 :: curr_table = ST_main
# 169:	END_main:
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


