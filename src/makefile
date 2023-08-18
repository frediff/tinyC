
#	***************************************************************************************************************
#	***************************************** COMPILERS LABRORATORY ***********************************************
#	********************************************* ASSIGNMENT 6 ****************************************************
#	*********************************************** MAKEFILE ******************************************************
#	**************************************** SUBHAM GHOSH (20CS10065) *********************************************
#	**************************************** ANUBHAV DHAR (20CS30004) *********************************************
#	***************************************************************************************************************

#   flex *.l; bison -dtv *.y; g++ ass6_20CS10065_20CS30004_translator.cxx ass6_20CS10065_20CS30004_parser.tab.c lex.yy.c; ./a.out

#	To just make the parser (generating parser.out):
# 			$ make
#
#	To run the parser on the given test via makefile:
# 			$ make test
#
# 	To run the parser on any other file source.c:
#			$ ./compiler.out source.c
#
# 	To clean unecessary files:
# 			$ make clean
#
#	To clean all files such that a new package can be built:
# 			$ make distclean


./compiler.out: lex.yy.o ass6_20CS10065_20CS30004_parser.tab.o ass6_20CS10065_20CS30004_target_translator.o ass6_20CS10065_20CS30004_translator.o
	g++ ass6_20CS10065_20CS30004_target_translator.o ass6_20CS10065_20CS30004_translator.o ass6_20CS10065_20CS30004_parser.tab.o lex.yy.o -o compiler.out	

ass6_20CS10065_20CS30004_target_translator.o: ass6_20CS10065_20CS30004_target_translator.cxx ass6_20CS10065_20CS30004_translator.h ass6_20CS10065_20CS30004_translator.cxx
	g++ -c ass6_20CS10065_20CS30004_target_translator.cxx

ass6_20CS10065_20CS30004_translator.o: ass6_20CS10065_20CS30004_translator.cxx ass6_20CS10065_20CS30004_translator.h
	g++ -c ass6_20CS10065_20CS30004_translator.cxx

lex.yy.o: ass6_20CS10065_20CS30004_lexer.l ass6_20CS10065_20CS30004_parser.tab.h
	flex ass6_20CS10065_20CS30004_lexer.l
	g++ -c lex.yy.c

ass6_20CS10065_20CS30004_parser.tab.o: ass6_20CS10065_20CS30004_parser.y ass6_20CS10065_20CS30004_parser.tab.c
	g++ -c ass6_20CS10065_20CS30004_parser.tab.c -o ass6_20CS10065_20CS30004_parser.tab.o

ass6_20CS10065_20CS30004_parser.tab.h: ass6_20CS10065_20CS30004_parser.y ass6_20CS10065_20CS30004_translator.h
	bison -dtv --report=all ass6_20CS10065_20CS30004_parser.y -o ass6_20CS10065_20CS30004_parser.tab.c

libass2_20CS10065_20CS30004.a: ass2_20CS10065_20CS30004.c myl.h
	gcc -c ass2_20CS10065_20CS30004.c
	ar -rcs libass2_20CS10065_20CS30004.a ass2_20CS10065_20CS30004.o

test: ./compiler.out libass2_20CS10065_20CS30004.a
	bash ./Test_Cases/run_tests.sh

clean:
	rm -f *.o
	rm -f ass6_20CS10065_20CS30004_parser.output
	rm -f ass6_20CS10065_20CS30004_parser.tab.c
	rm -f ass6_20CS10065_20CS30004_parser.tab.h
	rm -f lex.yy.c
	rm -f ./Test_Cases/*.s
	rm -f ./Test_Cases/*.out

distclean:
	rm -f *.a
	rm -f *.o
	rm -f compiler.out
	rm -f ass6_20CS10065_20CS30004_parser.output
	rm -f ass6_20CS10065_20CS30004_parser.tab.c
	rm -f ass6_20CS10065_20CS30004_parser.tab.h
	rm -f lex.yy.c
	rm -f ./Test_Cases/*.s
	rm -f ./Test_Cases/*.out
	rm -f *.out	
