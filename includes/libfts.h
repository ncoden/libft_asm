/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/29 07:21:47 by ncoden            #+#    #+#             */
/*   Updated: 2015/04/29 20:17:41 by ncoden           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include "libft.h"

void			ft_bzero(void *s, size_t n);
char			*ft_strcat(char *dst, const char *src);
int				ft_isalpha(int c);
int				ft_isalnum(int c);
int				ft_isascii(int c);
int				ft_isprint(int c);
int				ft_toupper(int c);
int				ft_tolower(int c);

size_t			ft_strlen(const char *s);
void			ft_putstr(const char *s);
void			ft_putchr(char c);
int				ft_puts(const char *s);

#endif