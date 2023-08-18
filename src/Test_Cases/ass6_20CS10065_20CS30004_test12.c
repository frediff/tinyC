// swap using pointers

int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);
int n = 10;

void swap(int * x, int * y){
  int z = *x;
  *x = *y;
  *y = z;
}

int main(){
  int x, y, k, min = 1010101;
  printStr("Enter integers in each line, (to stop enter 1010101)\n");
  do{
    y = readInt(&k);
    x = y;
    if(x < min){
      swap(&min, &x);
    }
  }while(y != 1010101);
  printStr("min = ");
  printInt(min);
  printStr("\n");
  return 0;
}
