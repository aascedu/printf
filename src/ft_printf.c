#include "libft_printf.h"

int	ft_printf(const char *str, ...)
{
	int		i;
	int		length;
	va_list	ap;

	va_start(ap, str);
	i = 0;
	length = 0;
	while (str[i])
	{
		if (str[i] == '%')
		{
			length = length + ft_specifier(ap, str[i + 1]);
			i++;
		}
		else
			length = length + ft_print_char(str[i]);
		i++;
	}
	return (length);
}
