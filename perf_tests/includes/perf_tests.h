/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   perf_tests.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/03 16:04:32 by ncoden            #+#    #+#             */
/*   Updated: 2015/05/03 17:16:15 by ncoden           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PERF_TESTS_H
# define PERF_TESTS_H

# include "libft.h"
# include "tests.h"

typedef struct	s_test
{
	char		*name;
	void		(*func)();
}				t_test;

t_test g_tests[] = {
	{"test_register_copy", &test_register_copy},
	{NULL, NULL}
};

#endif