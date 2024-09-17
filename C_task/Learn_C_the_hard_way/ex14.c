/*
#include<stdio.h>
#include<ctype.h>

int can_print_it(char ch);
void print_letters(char arg[]);

void print_arguments(int argc, char *argv[]){
	int i = 0;
	for(i=0; i<argc; i++){
		print_letters(argv[i]);
	}
}

void print_letters(char arg[]){
	int i = 0;
	for(i=0; arg[i] != '\0'; i++){
		char ch = arg[i];
		if(can_print_it(ch)){
			printf("'%c' == %d ",ch ,ch);
		}
	}
	printf("\n");
}

int can_print_it(char ch){
	return isalpha(ch) || isblank(ch);
}

int main(int argc, char *argv[]){
	print_arguments(argc,argv);
	return 0;
}
*/

#include<stdio.h>
#include<ctype.h>
#include<string.h>

void print_letters(int j, char arg[]);
void print_arguments(int argc, char *argv[]){
	int i=0;
	for(i=0; i<argc; i++){
		int j = strlen(argv[i]);
		print_letters(j, argv[i]);
	}
}

void print_letters(int j, char argv[]){
	int i = 0;
	for(i=0; i<j; i++){
		char ch = argv[i];
		if(isalpha(ch)){
			printf("'%c' == %d",ch ,ch);
		}
	}
	printf("\n");
}

int main(int argc, char *argv[]){
	print_arguments(argc, argv);
	return 0;
}
