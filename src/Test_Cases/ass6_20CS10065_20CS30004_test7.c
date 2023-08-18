
int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int sq(int x){
	return x * x;
}

int main(){
	int n, k;
	printStr("Enter n: ");
	n = readInt(&k);

	printStr("n * n = ");
	printInt(sq(n));
	printStr("\n");

	printStr("n ^ 4 = ");
	printInt(sq(sq(n)));
	printStr("\n");

	printStr("n ^ 8 = ");
	printInt(sq(sq(sq(n))));
	printStr("\n");

	printStr("n ^ 16 = ");
	printInt(sq(sq(sq(sq(n)))));
	printStr("\n");
}