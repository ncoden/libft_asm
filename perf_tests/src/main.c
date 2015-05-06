/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/03 15:20:26 by ncoden            #+#    #+#             */
/*   Updated: 2015/05/03 17:32:24 by ncoden           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "perf_tests.h"

static inline void		(*find_func(char *name))()
{
	int			i;

	if (!name)
		return (NULL);
	i = 0;
	while (g_tests[i].name != NULL)
	{
		if (ft_strequ(g_tests[i].name, name))
			return (g_tests[i].func);
		i++;
	}
	return (NULL);
}

int						main(int argc, char **argv)
{
	int			n;
	void		(*func)();

	if (argc != 3)
		return (-1);
	n = ft_atoi(argv[2]);
	if (!(func = find_func(argv[1])))
		return (-1);
	while (n > 0)
	{
		(*func)();
		n--;
	}
	ft_putstr(argv[1]);
	ft_putstr(" test executed\n");
	return (0);
}