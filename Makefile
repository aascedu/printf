# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 13:22:24 by aascedu           #+#    #+#              #
#    Updated: 2022/12/02 13:07:00 by aascedu          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# All lines commented are so, so that the output doesn't bother the MOULINETTE
# But I want to keep my Makefile clean and personnalized.

# EFFECTS
#BOLD = $'\x1b[1m
#END=$'\x1b[0m
#GREEN=$'\x1b[32m

SRC = src/ft_print_addr.c \
	src/ft_print_char.c \
	src/ft_print_hex.c \
	src/ft_print_nbr.c \
	src/ft_print_str.c \
	src/ft_print_unbr.c \
	src/ft_printf.c \
	src/ft_specifier.c

OBJ = $(SRC:.c=.o)

HEADER = include/ft_printf.h

LIBFT = ./libft/libft.a
LIBFT_DIR = ./libft/

CC = cc
RM = rm -rf
CFLAGS = -Wall -Werror -Wextra
AR = ar
ARFLAGS = rcs

NAME = libftprintf.a

all : lib
	make $(NAME)

%.o : %.c $(HEADER) $(LIBFT)
	$(CC) $(CFLAGS) -I $(HEADER) -o $@ -c $<
#	@echo "$(BOLD)$<$(END) $(GREEN)compiled !$(END)"

$(NAME) : $(OBJ)
	cp libft/libft.a .
	mv libft.a $(NAME)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ)
#	@echo
#	@echo "$(BOLD)$(NAME)$(END) has been $(GREEN)created !$(END)"

lib :
#	@echo
	make -C $(LIBFT_DIR)
#	@echo

clean :
	$(RM) $(OBJ)
	make clean -C $(LIBFT_DIR)
#	@echo "Both $(BOLD)library$(END) have been $(GREEN)cleaned$(END) from the .o files."

fclean : clean
	$(RM) $(NAME)
	make fclean -C $(LIBFT_DIR)
#	@echo "And $(BOLD)$(NAME)$(END) and $(BOLD)libft.a$(END) have been $(GREEN)removed.$(END)"

re : fclean
	make all

.PHONY : all lib clean fclean re
