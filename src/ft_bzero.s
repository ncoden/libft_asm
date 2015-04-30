; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 13:49:26 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 17:35:16 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_bzero
;	%rdi : void *			mem
;	%rsi : size_t			n

section .text
	global		_ft_bzero

_ft_bzero:
	cmp			rdi, 0			; check mem
	je			end
	cmp			rsi, 0			; check n
	je			end

	push		rdi
	mov			rcx, rsi		; prepare loop (%rxc turns)

while:							; foreach char in mem;
	mov	byte	[rdi], 0		;	 clear char
	inc			rdi
	loop		while

end:
	pop			rdi
	ret
