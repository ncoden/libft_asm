; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 16:31:41 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:35 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_isalnum
;	%rdi : char				c

section .text
	global		_ft_isalnum
	extern		_ft_isalpha
	extern		_ft_isdigit

_ft_isalnum:
	call		_ft_isalpha
	cmp			rax, 1
	je			end

	call		_ft_isdigit

end:
	ret
