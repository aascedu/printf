#include "ft_printf.h"

int	ft_printf(const char *str, ...)
{
	int		i;
	int		num_args;
	va_list	ap;

	va_start(ap, str);
	i = 0;
	while (str[++i])
	{
		if (i == 0)
		{
