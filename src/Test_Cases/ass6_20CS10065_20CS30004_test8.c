
// Fibonacci

int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int fib(int n){
	return (n < 2) ? n : fib(n - 1) + fib(n - 2);
}

int main(){
	int n, k;
	printStr("Enter n: ");
	n = readInt(&k);
	printStr("fib(");
	printInt(n);
	printStr(") = ");
	printInt(fib(n));
	printStr("\n");
}