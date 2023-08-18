int printStr(char * dummy);
int printInt(int dummy);
int readInt(int * dummy);

int main(){
  int number;
  int g;
  printStr("Enter a digit: ");
  number = readInt(&g);
  printStr("Entered digit in words: ");


    if(number == 1){
        printStr("one");
    }
    else{
        if(number == 2){
            printStr("two");
        }
        else{
            if(number == 3){
                printStr("three");
            }
            else{
                if(number == 4){
                    printStr("four");
                }
                else{
                    if(number == 5){
                        printStr("five");
                    }
                    else{
                        if(number == 6){
                            printStr("six");
                        }
                        else{
                            if(number == 7){
                                printStr("seven");
                            }
                            else{
                                if(number == 8){
                                    printStr("eight");
                                }
                                else{
                                    if(number == 9){
                                        printStr("nine");
                                    }
                                    else{
                                        if(number == 0){
                                            printStr("zero");
                                        }
                                        else{
                                            printStr(":(  nah ! that wasn't a digit");
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
      printStr("\n");

  return 0;
}
