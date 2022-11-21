# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:22:24 by aascedu           #+#    #+#              #
#    Updated: 2022/11/21 16:02:55 by aascedu          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRC = src/ft_print_addr.c \
	src/ft_printchar.c \
	src/ft_print_hex.c \
	src/ft_print_nbr.c \
	src/ft_print_str.c \
	src/ft_print_unbr.c \
	src/ft_printf.c \
	src/ft_specifier.c

OBJ = $(SRC:.c=.o)

HEADER = ./include/libft_printf.h ./include/libft.h

CC = cc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra -I

NAME = libftprintf.a

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
