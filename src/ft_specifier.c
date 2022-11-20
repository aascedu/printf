#include "libft_printf.h"

int	ft_specifier(va_list ap, const char c)
{
	int	length;

	length = 0;
//	if (c == 'd' || c == 'i')
//		length += ft_print_nbr(va_arg(ap, int));
	else if(c == 'c')
		length += ft_print_char(va_arg(ap, int));
	else if (c == 's')
		length += ft_print_str(va_arg(ap, char *));
//	else if (c == 'p')
//		length += ft_print_addr(va_arg(ap, unsigned long long));
//	else if (c == 'x' || c == 'X')
//		length += ft_print_hex(va_arg(ap, unsigned int), c)
//	else if (c == 'u')
//		length += ft_print_unbr(va_arg(ap, unsigned int));
	return (length);
}
