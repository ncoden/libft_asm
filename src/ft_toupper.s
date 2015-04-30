; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 15:43:05 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:14 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_toupper
;	%rdi : char				c

section .text
	global		_ft_toupper

_ft_toupper:
	mov			rax, rdi

	cmp			rdi, 'a'		; if c < 'a', return c
	jl			end
	cmp			rdi, 'z'		; if c > 'z', return c
	jg			end

	sub			rax, 32			; if 'a' <= c <= 'z', transform return

end:
	ret