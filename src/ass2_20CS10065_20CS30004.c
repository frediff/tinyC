/*

	Name    : Anubhav Dhar
	Roll no : 20CCS30004

*/


#include "myl.h" // definitions of ERR and OK are in this header

#define BUFF       20
#define PRECISION   7

// Method to print the string 'str' (assumed to be zero-terminated) using syscall
// Returns the number of characters printed
int printStr(char * str){

	int len = 0;
	for(; str[len] != '\0'; ++len); // calculation of length of string
	

	// using syscall to print str
	__asm__ __volatile__ (

		"movl $1, %%eax \n\t"
		"movq $1, %%rdi \n\t"
		"syscall \n\t"
		:
		:"S"(str), "d"(len)

	);
	return len; // returning the number of characters printed excluding '\0'
}



// Method to read the integer pointed to by n
// The return value is OK (for success) or ERR (for failure)
int readInt(int * n){
	char str[BUFF]; // string for input
	int len = 0; // the length of the input string (including '\n') will be returned by syscall.

	// using syscall to read string 
	__asm__ __volatile__ (

		"movl $0, %%eax \n\t"
		"movq $0, %%rdi \n\t"
		"syscall \n\t"
		:"=a"(len)
		:"S"(str), "d"(BUFF)

	);

	// if the return value of syscall is negative, it means that reading error has occured
	if(len < 0){
		return ERR;
	}

	int is_neg = 0, i = 0;
	*n = 0;

	// remove all leading spaces
	while(str[i] == ' ' && i < len - 2){
		++i;
	}

	if(str[i] == '-'){
		if(len <= 2 + i){ // this means that only a single '-' has been provided in input. We report error
			return ERR;
		}
		
		++i;
		is_neg = 1;

	}

	for(; i < len - 1; ++i){ // reading the rest of the integer;
		if(str[i] > '9' || str[i] < '0'){ // existence of non-numeric character. We report errror
			return ERR;
		}

		// else we calculate the number
		*n *= 10;
		*n += str[i] - '0';
	}

	if(is_neg == 1){ // a negative number of provided as input
		*n = -(*n);
	}

	//return OK; // reading was successful

	int temp = *n;
	*n = OK;
	return temp;

}


// Method to print the integer n (without newline)
// Returns the number of characters printed (ERR in case of an error)
int printInt(int n){

	char str[BUFF], zero = '0'; // character string to be printed
	int i = 0; // iterator for str

	if(n == 0){
		str[i++] = zero;
	}else if(n == -2147483648){ // if n is INT_MIN then making it positive would cause an overflow. We handle this case manually
		str[i++] = '-';
		str[i++] = '2';
		str[i++] = '1';
		str[i++] = '4';
		str[i++] = '7';
		str[i++] = '4';
		str[i++] = '8';
		str[i++] = '3';
		str[i++] = '6';
		str[i++] = '4';
		str[i++] = '8';
	}else{
		if(n < 0){ // adding negative sign if negative number is to be printed
			str[i++] = '-';
			n = -n;
		}
		while(n){ // loop to extract the digits of n
			str[i++] = zero + n % 10;
			n /= 10;
		}

		// str now contains the n in reverse. We need to reverse str again.
		
		// for loop for reversing str
		for(int j = (str[0] == '-' ? 1 : 0), k = i - 1; j < k; ++j, --k){
			char temp = str[j];
			str[j] = str[k];
			str[k] = temp;
		}

	}

	int syscall_ret = 0; // for checking any printing error (error has occured if syscall returns a negative value)

	// printing str using syscall
	__asm__ __volatile__ (

		"movl $1, %%eax \n\t"
		"movq $1, %%rdi \n\t"
		"syscall \n\t"
		:"=a"(syscall_ret)
		:"S"(str), "d"(i)

	);

	return (syscall_ret >= 0) ? i : ERR; // returning the number of characters printed (if successful) or ERR (if failed)

}



// // Method to read the floating point number pointed to by f
// // The return value is OK (for success) or ERR (for failure)
// int readFlt(float * f){
// 	char str[BUFF]; // string for input
// 	int len = 0; // the length of the input string (including '\n') will be returned by syscall.

// 	// using syscall to read string 
// 	__asm__ __volatile__ (

// 		"movl $0, %%eax \n\t"
// 		"movq $0, %%rdi \n\t"
// 		"syscall \n\t"
// 		:"=a"(len)
// 		:"S"(str), "d"(BUFF)

// 	);

// 	// if the return value of syscall is negative, it means that reading error has occured
// 	if(len < 0){
// 		return ERR;
// 	}

// 	int is_neg = 0, i = 0;
// 	*f = 0;

// 	// remove all leading spaces
// 	while(str[i] == ' ' && i < len - 2){
// 		++i;
// 	}

// 	if(str[i] == '-'){
// 		if(len <= 2){ // this means that only a single '-' has been provided in input. We report error
// 			return ERR;
// 		}
		
// 		++i;
// 		is_neg = 1;

// 	}

// 	// for taking the integral part
// 	for(; i < len - 1; ++i){ 
// 		if(str[i] == '.'){ // we increment i and move on to read the fractional part of the input
// 			++i;
// 			break; 
// 		}
// 		if(str[i] > '9' || str[i] < '0'){ // existence of non-numeric character. We report errror
// 			return ERR;
// 		}

// 		// else we calculate the number
// 		*f *= 10;
// 		*f += str[i] - '0';
// 	}

// 	// reading the fractional part
// 	float multiplier = 1.0; // weight of the current decimal place
// 	for(; i < len - 1; ++i){

// 		if(str[i] > '9' || str[i] < '0'){ // existence of non-numeric character. We report errror
// 			return ERR;
// 		}

// 		multiplier /= 10.0;
// 		*f += multiplier * (str[i] - '0');
// 	}

// 	if(is_neg == 1){ // a negative number of provided as input
// 		*f = -(*f);
// 	}

// 	return OK; // reading was successful

// }


// // Method to print the floating point number f (without newline)
// // Returns the number of characters printed (ERR in case of an error)
// int printFlt(float f){

// 	char str[BUFF], zero = '0'; // character string to be printed
// 	int i = 0; // iterator for str
// 	int int_f; // this will be the integer part of f
// 	if(f == 0.0){
// 		str[i++] = zero;
// 		str[i++] = '.';
// 		str[i++] = zero;
// 	}else{
// 		if(f < 0){ // adding negative sign if negative number is to be printed
// 			str[i++] = '-';
// 			f = -f;
// 		}

// 		int_f = (int)f; // integer part of f
// 		f -= int_f; // f now contains the fractional part of f.

// 		while(int_f){ // loop to extract the digits of int_f
// 			str[i++] = zero + int_f % 10;
// 			int_f /= 10;
// 		}

// 		// str now contains the int_f in reverse. We need to reverse str again.
		
// 		// for loop for reversing str
// 		for(int j = (str[0] == '-' ? 1 : 0), k = i - 1; j < k; ++j, --k){
// 			char temp = str[j];
// 			str[j] = str[k];
// 			str[k] = temp;
// 		}

// 		if(i == 0 || (i == 1 && str[0] == '-')){ // starts with a 0.
// 			str[i++] = zero;
// 		}
// 		str[i++] = '.'; // incorporating the decimal point


// 		// filling up data after the decimal point
// 		for(int j = 0; j < PRECISION; ++j){
// 			f *= 10.0; // We do this so the the first number after the decimal point becomes the integral point
// 			str[i++] = (char)(zero + (int)f);
// 			f -= (int)f;
// 		}

// 		// Uncomment the following lines if the trailing zeros are to be stopped from printing
		
// 		/*
// 		while(str[i - 1] == zero && str[i - 2] != '.'){ // trailing zeros are to be eliminated execpt the one just after the point
// 			--i;
// 		}
// 		*/

// 	}

// 	int syscall_ret = 0; // for checking any printing error (error has occured if syscall returns a negative value)

// 	// printing str using syscall
// 	__asm__ __volatile__ (

// 		"movl $1, %%eax \n\t"
// 		"movq $1, %%rdi \n\t"
// 		"syscall \n\t"
// 		:"=a"(syscall_ret)
// 		:"S"(str), "d"(i)

// 	);

// 	return (syscall_ret >= 0) ? i : ERR; // returning the number of characters printed (if successful) or ERR (if failed)

// }


