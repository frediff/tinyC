int fast_power(int a, int b){
    
    int rem;
    int prod = 1;
    int mult;
    mult = a;
    
    
    while( b > 0 ){
        rem = b % 2;
        if( rem == 1 ){
            prod = prod * mult;
        }
        b = b / 2;
        mult = mult * mult;       
    }
    
    return prod;
}

int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int main()
{
  int a,b,c;
  printStr("enter 2 integers (one in each line):\n");
  a = readInt(&c);
  b = readInt(&c);
  printStr("first number    : ");
  printInt(a);
  printStr(", ");
  printStr("\nsecond number   : ");
  printInt(b);
  printStr(", ");
  printStr("\na raised to power b : ");
  printInt(fast_power(a, b));
  printStr("\n");
  return 0;
}
