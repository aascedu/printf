#ifndef	LIBFT_PRINTF_H
# define LIBFT_PRINTF_H
# include <stdlib.h>
# include <unistd.h>

int	ft_print_char(int c);
int	ft_printf(const char *str, ...);
int	ft_specifier(va_list ap, const char c);

#endif
