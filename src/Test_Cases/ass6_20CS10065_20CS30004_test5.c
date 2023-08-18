int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int main()
{
    int a;
    int g;
    int b = 0;
    
    printStr("Enter a number: ");
    a = readInt(&g);
    g = a;
    
    while(g > 0){
        b = b * 10 + (g % 10);
        g = g / 10;
    }
    
    if(b == a){
        printStr("The entered number is palindromic\n");
    }
    else{
        printStr("The entered number is not palindromic\n");
    }
    
    return 0;
}

