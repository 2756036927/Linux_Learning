CFLAGS=-Wall -g

sources = ex1.c ex3.c ex4.c ex5.c ex6.c ex7.c ex8.c ex9.c ex10.c ex11.c ex12.c ex13.c ex14.c ex15.c ex16.c ex17.c
objects = $(sources:.c=.o)
targets = $(sources:.c=)
#$(sources)引用变量，:.c= 表示将.c替换为空；例如$(sources:.c=.o)就是将.c替换为.o
all: $(targets)
	@echo "All done!"

$(targets): % : %.o
	gcc $(CFLAGS) $< -o $@

$(objects): %.o : %.c
	gcc $(CFLAGS) -c $< -o $@
#%.o: %.c表示对应.o文件依赖于对应的.c文件；例如objects选择ex1.o，则依赖于对应的ex1.c文件

.PHONY: clean all

clean:
	rm -f $(targets)

#1:  $@ is the target name, It can include multiple targets
#2:  @command is used to do not display the command
#3:  tempname=... is used to define a variable. useway: $(tempname)
#4:  $< is the first dependency
#5:  $^ is all dependencies
