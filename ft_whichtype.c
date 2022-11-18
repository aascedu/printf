char	*ft_whichtype(char c)
{
	if (c == 'd')
		return ("int");
	if (c == 'i')
		return ("int");
	if (c == 'c')
		return ("unsigned char");
	if (c == 's')
		return ("const char *");
	if (c == 'p')
		return ("void *");
	if (c == 'x')
		return ("unsigned int");
	if (c == 'X')
		return ("unsigned int");
	if (c == 'u')
		return ("unsigned int");
}

