
int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int fact(int n){
	if(n == 0){
		return 1;
	}else
		return fact(n - 1) * n;
}

int main(){
	int n, k;
	printStr("Enter n: ");
	n = readInt(&k);
	printStr("fact(");
	printInt(n);
	printStr(") = ");
	printInt(fact(n));
	printStr("\n");
}