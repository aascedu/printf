#ifndef	FT_PRINTF_H
# define FT_PRINTF_H
# include <stdlib.h>
# include <unistd.h>

int	ft_printf(const char *str, ...);
int	ft_countargs(const char *str);
char	*ft_whichtype(char c);

#endif
