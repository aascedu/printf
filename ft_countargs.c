#include "ft_printf.h"

int	ft_countargs(const char *str)
{
	int	i;
	int	result;

	i = 0;
	result = 0;
	while (i < (ft_strlen(str) - 1))
	{
		if (i == 0)
		{
			if (str[i] == '%' && (str[i + 1] == 'c' || str[i + 1] == 's'
				|| str[i + 1] == 'd' || str[i + 1] == 'i' || str[i + 1] == 'p'
				|| str[i + 1] == 'u' || str[i + 1] == 'x' || str[i + 1] == 'X'))
				result++;
		}
		else
		{
			if (str[i] == '%' && str[i - 1] != '%' && (str[i + 1] == 'c'
				|| str[i + 1] == 's' || str[i + 1] == 'd' || str[i + 1] == 'i'
				|| str[i + 1] == 'p' || str[i + 1] == 'u' || str[i + 1] == 'x'
				|| str[i + 1] == 'X'))
				result++;
		}
		i++;
	}
	return (result);
}
