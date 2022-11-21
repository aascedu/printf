# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:22:24 by aascedu           #+#    #+#              #
#    Updated: 2022/11/21 15:56:41 by aascedu          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRC = src/ft_specifier.c src/ft_printf.c src/ft_print_str.c \
	src/ft_print_char.c src/

OBJ = $(SRC:.c=.o)

HEADER = ./include/libft_printf.h

CC = cc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra -I

NAME = libft_printf.a

all : $(NAME)

src/%.o : %.c Makefile $(HEADER)
	$(CC) $(CFLAGS) -o $@ -c $<

$(NAME) : $(OBJ)
	ar rcs $(NAME) $(OBJ)

clean :
	$(RM) $(OBJ)

fclean : clean
	$(RM) $(NAME)

re : fclean $(NAME)

.PHONY : all clean fclean re
