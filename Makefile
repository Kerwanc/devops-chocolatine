##
## EPITECH PROJECT, 2023
## makefile
## File description:
## libmy.a
##

NAME		=	chocolate

NAME_TEST	=	unit_tests

MAIN		=	src/main.c

SRC			=	src/add.c

SRC_TEST	=	tests/test.c

OBJ			=	$(SRC:.c=.o) \
				$(MAIN:.c=.o)

OBJ_TEST	=	$(SRC_TEST:.c=.o) \
				$(SRC:.c=.o)

CFLAGS		=	-Wall -Wextra

CPPFLAGS	=	-iquote include

FLAG_TEST = -lcriterion

$(NAME): 	$(OBJ)
	$(CC) -o $(NAME) $(OBJ)

all:	$(NAME)

clean:
	$(RM) $(OBJ)
	$(RM) $(OBJ_TEST)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(NAME_TEST)

tests_run:	CFLAGS += --coverage

tests_run: $(OBJ_TEST)
			$(CC) -o $(NAME_TEST) $(OBJ_TEST) $(CFLAGS) $(FLAG_TEST)
			./$(NAME_TEST)

re: fclean all

.PHONY: all clean fclean re
