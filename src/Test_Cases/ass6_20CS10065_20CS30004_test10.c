
// armstrong numbers below 10000;

int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int NMAX = 1000;

int sum_of_cube_of_digits(int n){
	int s = 0;
	while(n != 0){
		int x = n % 10;
		s = s + x * x * x;
		n = n / 10;
	}
	return s;
}

int is_armstrong(int n){
	if(sum_of_cube_of_digits(n) == n){
		return 1;
	}
	return 0;
}

int main(){
	printStr("Armstrong numbers below ");
	printInt(NMAX);
	printStr(" are:\n");
	int i = 1;
	for(i = 1; i <= NMAX; ++i){
		if(is_armstrong(i) == 1){
			printInt(i);
			printStr("\n");
		}
	}
	return 0;
}