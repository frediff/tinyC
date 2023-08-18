int gcd(int a, int b){
    int t;
    while ( (a%b) != 0){
        t = a%b;
        a = b;
        b = t;
    }
    return b;
}

int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int main()
{
    int a, b;
    int g;
    printStr("Enter first number: ");
    a = readInt(&g);
    
    printStr("Enter second number: ");
    b = readInt(&g);
    
    printStr("Their GCD = ");
    printInt(gcd(a, b));
    
    printStr("\n");
    
    return 0;
}
