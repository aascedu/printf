#include "ft_printf.h"

int	ft_printf(char *str, ...)
{
	int		i;
	va_list	args;

	va_start(args, str);
	i = 0;
	while (i < args)
	{
		va_arg(args, str);
