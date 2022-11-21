# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:22:24 by aascedu           #+#    #+#              #
#    Updated: 2022/11/21 16:33:44 by aascedu          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

SRC = src/ft_print_addr.c \
	src/ft_print_char.c \
	src/ft_print_hex.c \
	src/ft_print_nbr.c \
	src/ft_print_str.c \
	src/ft_print_unbr.c \
	src/ft_printf.c \
	src/ft_specifier.c

OBJ = $(SRC:.c=.o)

LIBFT_DIR = ./libft/

HEADER = libft_printf.h libft.h

CC = cc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra

NAME = libftprintf.a

all : $(NAME)

src/%.o : %.c Makefile $(HEADER)
	$(CC) $(CFLAGS) -I $(HEADER) -o $@ -c $<

$(NAME) : $(OBJ)
	make -C $(LIBFT_DIR)
	cp libft/libft.a .
	mv libft.a $(NAME)
	ar rcs $(NAME) $(OBJ)

clean :
	$(RM) $(OBJ)
	make clean -C $(LIBFT_DIR)

fclean : clean
	$(RM) $(NAME)
	make fclean -C $(LIBFT_DIR)

re : fclean $(NAME)

.PHONY : all clean fclean re
