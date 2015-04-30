; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/30 18:52:15 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/30 19:48:46 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_memcpy
;	%rdi : void *				dst
;	%rsi : void *				src
;	%rdx : size_t				n

SECTION .text
	global		_ft_memcpy

_ft_memcpy:
	cmp			rdi, 0				; Check dst
	je			end
	cmp			rsi, 0				; Check src
	je			end

	push		rcx

									; MOVS loop with :
									;  - %rdi : src, source of copy
									;  - %rsi : dst, destination of copy
	mov			rcx, rdx			;  - %rcx : n, iteration number

	cld
	rep			movsb				; do loop

	pop			rcx					; reset values
	mov			rax, rdi			; return dst

end:
	ret
