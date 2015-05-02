; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/29 16:31:41 by ncoden            #+#    #+#              ;
;    Updated: 2015/05/02 17:05:46 by ncoden           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%include "libfts.hs"

;	ft_isalnum
;	%rdi : char				c

SECTION .text
	global		_ft_isalnum

_ft_isalnum:
	call		_ft_isalpha			; Call ft_isalpha with c in %rdi
	cmp			rax, 1				; If c is alpha, return TRUE
	je			end

	call		_ft_isdigit			; Else, return ft_isdigit with c in %rdi

end:
	ret
