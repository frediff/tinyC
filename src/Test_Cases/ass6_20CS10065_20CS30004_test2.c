
int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int main(){
  int i, j, n, sum = 0;
  printStr("Enter n (<= 200):");
  n = readInt(&j);
  for(i = 0; i < n; ++i){
    for(j = 0; j < n; ++j){
      int yyy;
      for(yyy = 0; yyy < n; ++yyy)
        sum = sum + 1;
    }
  }
  printStr("n cube (calculated in a very stupid way) = ");
  printInt(sum);
  printStr("\n");
  return 0;
}
