# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/08 15:12:19 by aascedu           #+#    #+#              #
#    Updated: 2022/11/25 12:49:57 by aascedu          ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

# EFFECTS

BOLD = $'\x1b[1m
END=$'\x1b[0m
GREEN=$'\x1b[32m



SRCS = ft_isalnum.c ft_isascii.c ft_isprint.c ft_memmove.c ft_strlen.c ft_bzero.c \
		ft_isalpha.c ft_isdigit.c ft_memcpy.c ft_memset.c ft_strlcpy.c \
		ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c \
		ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_strlcat.c ft_calloc.c \
		ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
		ft_putnbr_fd.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
		ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \

HEADER = libft.h

OBJS = $(SRCS:.c=.o)

CC = @cc
RM = @rm -f
CFLAGS = -Wall -Werror -Wextra -I.
AR = @ar
ARFLAGS = rcs

NAME = libft.a

all: $(NAME)

%.o : %.c Makefile $(HEADER)
	$(CC) $(CFLAGS) -o $@ -c $<
	@echo "$(BOLD)libft/$<.c$(END) $(GREEN)compiled !$(END)"

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $(NAME) $(OBJS)
	@echo
	@echo "$(BOLD)$(NAME)$(END) $(GREEN)has been created !$(END)"

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
