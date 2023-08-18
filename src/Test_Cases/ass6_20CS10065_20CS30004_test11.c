// array binary search

int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);
int n = 10;

int main(){
  int A[10];
  int i = 0, j, k;
  printStr("Enter 10 integers (one in each line):\n");
  for(i = 0; i < n; ++i){
    A[i] = readInt(&k);
  }
  for(i = 0; i < n; ++i){
    for(j = i + 1; j < n; ++j){
      if(A[i] > A[j]){
        k = A[i];
        A[i] = A[j];
        A[j] = k;
      }
    }
  }
  printStr("They form the sorted sequence: ");
  for(i = 0; i < n; ++i){
    printInt(A[i]);
    if(i < n - 1)
      printStr(", ");
  }
  printStr("\n");

  int hi = n + 1, lo = 0, mid;
  int target;
  printStr("Enter target number : ");
  target = readInt(&k);

  while(lo < hi - 1){
  	mid = (hi + lo) / 2;
  	if(A[mid] > target){
  		hi = mid;
  	}else{
  		lo = mid;
  	}
  }

  (A[lo] == target) ? printStr("FOUND\n") : printStr("NOT FOUND\n"); 

  return 0;
}
