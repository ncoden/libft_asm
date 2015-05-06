; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_putnbr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/04 13:07:07 by ncoden            #+#    #+#              ;
;    Updated: 2015/05/07 00:11:46 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%include "libfts.hs"

;	ft_putnbr
;	%rdi : int				s

SECTION .text
	global		_ft_putnbr

_ft_putnbr:
	push		rdi
	push		rax
	push		rbx
	push		rdx

	mov			eax, edi
	sub			rbx, rbx

	cmp			eax, 0				; Skip for positive numbers
	jge			prepare_loop

prepare_negative:
	not			eax
	inc			eax

	mov			rdi, '-'
	call		_ft_putchr

prepare_loop:
	mov			edi, 10

read_loop:
	sub			rdx, rdx
	div			edi

	push		rdx
	inc			rbx

	cmp			eax, 0
	jne			read_loop

print_loop:
	pop			rdi
	add			rdi, '0'
	call		_ft_putchr

	dec			rbx
	cmp			rbx, 0
	jne			print_loop

	pop			rdx
	pop			rbx
	pop			rax
	pop			rdi
	ret
