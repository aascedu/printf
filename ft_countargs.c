int	ft_countargs(const char *str)
{
	int	i;
	int	result;

	i = 0;
	result = 0;
	while (str[i])
	{
		if (str[i] == 'c' || str[i] == 's' || str[i] == 'd' || str[i] == 'i'
			|| str[i] == 'p' || str[i] == 'u' || str[i] == 'x' || str[i] == 'X')
			result++;
		i++;
	}
	return (result);
}
