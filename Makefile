# -*- MakeFile -*-

CC = clang -std=c89
CFLAGS = -c
OFLAGS = -o
WFLAGS = -pedantic-errors -Wall -Wextra -Werror
RM = rm -f
PRINT = @echo

all: output

output: main.o ft_prime.o
	$(PRINT) "==> Linking object files..."
	$(CC) main.o ft_prime.o $(OFLAGS) output

main.o: main.c
	$(PRINT) "==> Compiling main.c file..."
	$(CC) $(WFLAGS) $(CFLAGS) main.c

ft_prime.o: ft_prime.c ft_prime.h
	$(PRINT) "==> Compiling ft_prime.h file..."
	$(CC) $(WFLAGS) $(CFLAGS) ft_prime.c

clean:
	$(PRINT) "==> Cleaning directory"
	$(RM) *.o output a.out
