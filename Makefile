CC = clang
CFLAGS = -Wall -Wextra -std=c18 -Wpedantic -ggdb
CINCLUDES = -I./thirdparty/raylib/include/ 
CLINKING = -Wl,-rpath=./thirdparty/raylib/lib/ -L./thirdparty/raylib/lib/ -l:libraylib.so

all: main objs/libplug.so

main: src/main.c
	$(CC) $(CFLAGS) src/main.c -o main $(CINCLUDES) $(CLINKING)

objs/libplug.so: src/plugin.c
	$(CC) $(CFLAGS) -o objs/_libplug.so $(CINCLUDES) -fPIC -shared src/plugin.c $(CLINKING)
	mv objs/_libplug.so objs/libplug.so

run: all
	./main
