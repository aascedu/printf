/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 10:41:04 by aascedu           #+#    #+#             */
/*   Updated: 2022/11/28 12:55:48 by aascedu          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

int	ft_printf(const char *str, ...)
{
	int		i;
	int		length;
	va_list	ap;

	if (write(1, 0, 0))
		return (-1);
	va_start(ap, str);
	length = 0;
	if (ft_strlen(str) == 1 && str[0] == '%')
		return (va_end(ap), length);
	i = 0;
	while (str[i])
	{
		if (str[i] == '%')
		{
			i++;
			length += ft_specifier(ap, str[i]);
		}
		else
			length += ft_print_char(str[i]);
		i++;
	}
	return (va_end(ap), length);
}
