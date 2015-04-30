; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 14:08:21 by ncoden            #+#    #+#              ;
;    Updated: 2015/04/29 16:28:25 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

;	ft_bzero
;	%rdi : char *			dst
;	%rsi : const char *		src

section .text
	global	_ft_strcat

_ft_strcat:
	cmp			rdi, 0			; check mem
	je			end
	cmp			rsi, 0			; check n
	je			end

	push		rdi
	push		rsi

loop_to_end:					; move to the dst end
	cmp	byte	[rdi], 0
	je			loop_copy
	inc			rdi
	jmp			loop_to_end

loop_copy:
	mov byte	al, [rsi]		; copy src to dst
	mov byte	[rdi], al
	inc			rdi
	inc			rsi
	cmp	byte	[rsi], 0
	jne			loop_copy

	mov	byte	[rdi], 0		; copy the last \0

end:
	pop			rsi
	pop			rdi
	mov			rax, rdi		; return dst
	ret
