/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 16:52:22 by aascedu           #+#    #+#             */
/*   Updated: 2022/11/21 16:53:23 by aascedu          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>
# include "../libft/libft.h"

int	ft_print_char(int c);
int	ft_print_str(char *str);
int	ft_print_nbr(int nbr);
int	ft_print_addr(unsigned long long ptr);
int	ft_print_hex(unsigned int nbr, const char c);
int	ft_print_unbr(unsigned int unbr);

int	ft_printf(const char *str, ...);

int	ft_specifier(va_list ap, const char c);

#endif
