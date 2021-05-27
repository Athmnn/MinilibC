##
## EPITECH PROJECT, 2021
## B-ASM-400-STG-4-1-asmminilibc-auguste.thomann
## File description:
## Makefile
##

SRC =		strlen.asm		\
			memset.asm		\
			memcpy.asm		\
			strncmp.asm		\
			strcmp.asm		\
			strcasecmp.asm	\
			strchr.asm		\
			strpbrk.asm		\
			




CC =			ld
ASM =			nasm
RM =			rm -f
NAME =			libasm.so
OBJ =			$(SRC:.asm=.o)
CFLAGS	=		-shared -fPIC
ASMFLAGS =		-f elf64

%.o: %.asm
	$(ASM) -o $@ $< $(ASMFLAGS)

all:			$(NAME)

$(NAME):		$(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean:			clean
	$(RM) $(NAME)

re:			fclean all

.PHONY:			all clean fclean re