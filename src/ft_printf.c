/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aascedu <aascedu@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 10:41:04 by aascedu           #+#    #+#             */
/*   Updated: 2022/11/21 16:39:33 by aascedu          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

int	ft_printf(const char *str, ...)
{
	int		i;
	int		length;
	va_list	ap;

	va_start(ap, str);
	i = 0;
	length = 0;
	if (ft_strlen(str) == 1 && str[0] == '%')
		return (length);
	while (str[i])
	{
		if (str[i] == '%')
		{
			length += ft_specifier(ap, str[i + 1]);
			i++;
		}
		else
			length += ft_print_char(str[i]);
		i++;
	}
	return (length);
}
