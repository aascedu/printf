SRC = src/ft_specifier.c scr/ft_printf.c src/ft_print_str.c \
	src/ft_print_char.c src/main.c

OBJ = $(SRC:.c=.o)

HEADER = libft_printf.h

CC = cc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra -I

NAME = test

all : $(NAME)

src/%.o : %.c Makefile include/$(HEADER)
	$(CC) $(CFLAGS) -o $@ -c $<

$(NAME) : $(OBJ)
	$(CC) $(CFLAGS) -o $@ -c $^

clean :
	$(RM) $(OBJ)

fclean : clean
	$(RM) $(NAME)

re : fclean $(NAME)

.PHONY : all clean fclean re
