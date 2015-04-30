/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/29 07:20:47 by ncoden            #+#    #+#             */
/*   Updated: 2015/04/30 19:47:29 by ncoden           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"

int				main(void)
{
	int			ret;
	char		mem1[50] = "";
	char		mem2[50] = "";

	ft_putstr(" --- bzero --- \n");
	ft_strcpy(mem1, "ABCDEF");
	ft_bzero(mem1, 3);
	ft_putstr("N'affiche rien : {");
	ft_putstr(mem1);
	ft_putstr("}\nAffiche \"DEF\": {");
	ft_putstr(mem1 + 3);


	ft_putstr("}\n\n --- strcat --- \n");
	ft_strcpy(mem1, "abc");
	ft_strcpy(mem2, "123");
	ft_strcat(mem1, mem2);
	ft_putstr("Affiche \"abc123\": {");
	ft_putstr(mem1);

	ft_strcpy(mem1, "");
	ft_strcpy(mem2, "ABC");
	ft_strcat(mem1, mem2);
	ft_putstr("}\nAffiche \"ABC\": {");
	ft_putstr(mem1);

	ft_putstr("}\n\n --- isalpha --- \n");
	ft_putstr("a is alpha : ");
	ft_putnbr(ft_isalpha('a'));
	ft_putstr("\nA is alpha : ");
	ft_putnbr(ft_isalpha('A'));
	ft_putstr("\nZ is alpha : ");
	ft_putnbr(ft_isalpha('Z'));
	ft_putstr("\n_ is alpha : ");
	ft_putnbr(ft_isalpha('_'));
	ft_putstr("\n0 is alpha : ");
	ft_putnbr(ft_isalpha('0'));
	ft_putstr("\n\\0 is alpha : ");
	ft_putnbr(ft_isalpha(0));

	ft_putstr("\n\n --- isdigit --- \n");
	ft_putstr("0 is digit : ");
	ft_putnbr(ft_isdigit('0'));
	ft_putstr("\n5 is digit : ");
	ft_putnbr(ft_isdigit('5'));
	ft_putstr("\n9 is digit : ");
	ft_putnbr(ft_isdigit('9'));
	ft_putstr("\na is digit : ");
	ft_putnbr(ft_isdigit('a'));
	ft_putstr("\nA is digit : ");
	ft_putnbr(ft_isdigit('A'));
	ft_putstr("\n\\0 is digit : ");
	ft_putnbr(ft_isdigit(0));

	ft_putstr("\n\n --- isalnum --- \n");
	ft_putstr("a is alnum : ");
	ft_putnbr(ft_isalnum('a'));
	ft_putstr("\nA is alnum : ");
	ft_putnbr(ft_isalnum('A'));
	ft_putstr("\nZ is alnum : ");
	ft_putnbr(ft_isalnum('Z'));
	ft_putstr("\n0 is alnum : ");
	ft_putnbr(ft_isalnum('0'));
	ft_putstr("\n9 is alnum : ");
	ft_putnbr(ft_isalnum('9'));
	ft_putstr("\n_ is alnum : ");
	ft_putnbr(ft_isalnum('_'));
	ft_putstr("\n\\0 is alnum : ");
	ft_putnbr(ft_isalnum(0));

	ft_putstr("\n\n --- isascii --- \n");
	ft_putstr("0 is ascii : ");
	ft_putnbr(ft_isascii(0));
	ft_putstr("\n42 is ascii : ");
	ft_putnbr(ft_isascii(42));
	ft_putstr("\n127 is ascii : ");
	ft_putnbr(ft_isascii(127));
	ft_putstr("\n128 is ascii : ");
	ft_putnbr(ft_isascii(128));
	ft_putstr("\n-1 is ascii : ");
	ft_putnbr(ft_isascii(-1));

	ft_putstr("\n\n --- isprint --- \n");
	ft_putstr("'a' is print : ");
	ft_putnbr(ft_isprint('a'));
	ft_putstr("\n' ' is print : ");
	ft_putnbr(ft_isprint(' '));
	ft_putstr("\n31 is print : ");
	ft_putnbr(ft_isprint(31));
	ft_putstr("\n127 is print : ");
	ft_putnbr(ft_isprint(127));

	ft_putstr("\n\n --- toupper --- \n");
	ft_putstr("a to upper : ");
	ft_putchr(ft_toupper('a'));
	ft_putstr("\nA to upper : ");
	ft_putchr(ft_toupper('A'));
	ft_putstr("\n_ to upper : ");
	ft_putchr(ft_toupper('_'));
	ft_putstr("\n0 to upper : ");
	ft_putchr(ft_toupper('0'));
	ft_putstr("\n\\0 to upper : 0x");
	ft_putnbrhex(ft_toupper(0));

	ft_putstr("\n\n --- tolower --- \n");
	ft_putstr("a to upper : ");
	ft_putchr(ft_tolower('a'));
	ft_putstr("\nA to upper : ");
	ft_putchr(ft_tolower('A'));
	ft_putstr("\n_ to upper : ");
	ft_putchr(ft_tolower('_'));
	ft_putstr("\n0 to upper : ");
	ft_putchr(ft_tolower('0'));
	ft_putstr("\n\\0 to upper : 0x");
	ft_putnbrhex(ft_tolower(0));

	ft_putstr("\n\n --- strlen --- \n");
	ft_putstr("Taille de \"ABC\" : ");
	ft_putnbr(ft_strlen("ABC"));
	ft_putstr("\nTaille de \"\" : ");
	ft_putnbr(ft_strlen(""));
	ft_putstr("\nTaille de NULL : ");
	ft_putnbr(ft_strlen(0));

	ft_putstr("\n\n --- puts --- \n");
	ft_putstr("Ecrire \"ABC\\n\" : {");
	ret = ft_puts("ABC");
	ft_putstr("} (retour = ");
	ft_putnbr(ret);
	ft_putstr(")\nEcrire \"\\n\" : {");
	ret = ft_puts("");
	ft_putstr("} (retour = ");
	ft_putnbr(ret);
	ft_putstr(")\nEcrire NULL : {");
	ret = ft_puts(0);
	ft_putstr("} (retour = ");
	ft_putnbr(ret);

	ft_strcpy(mem1, "..........");
	ft_putstr("\n\n --- memset --- \n");
	ft_putstr("memset de 3x \"A\" : {");
	ft_memset(mem1, 'A', 3);
	ft_putstr(mem1);
	ft_putstr("}\nmemset de 0x \"B\" : {");
	ft_memset(mem1, 'B', 0);
	ft_putstr(mem1);
	ft_putstr("}\nmemset dans NULL : OK");
	ft_memset(NULL, 'C', 3);

	ft_strcpy(mem1, "..........");
	ft_strcpy(mem2, "HelloXXXXX");
	ft_putstr("\n\n --- memcpy --- \n");
	ft_putstr("Copie de \"Hello\" : {");
	ft_memcpy(mem1, mem2, 5);
	ft_putstr(mem1);
	ft_putstr("}\nCopie 0 carracteres : {");
	ft_strcpy(mem2, "XXXXXXXXX");
	ft_memcpy(mem1, mem2, 0);
	ft_putstr(mem1);
	ft_putstr("}\nCopie vers NULL : {");
	ft_memcpy(NULL, mem2, 0);
	ft_putstr(mem1);
	ft_putstr("}\nCopie depuis NULL : {");
	ft_memcpy(mem1, NULL, 0);
	ft_putstr(mem1);
	return (0);
}