# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/29 06:56:00 by ncoden            #+#    #+#              #
#    Updated: 2015/05/07 16:34:55 by ncoden           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

# COMPILATION
CC = gcc
CCFLAGS = -Wall -Werror -Wextra

ASM = ~/.brew/Cellar/nasm/dev/bin/nasm
# dev : NASM v2.11.08 modified to accept extern redeclaration as global
ASMFLAGS = -f macho64
LNKFLAGS = -macosx_version_min 10.8 -lSystem

# DIRECTORIES
LIBDIR = .
SRCDIR = src
OBJDIR = obj
INCDIR = \
	includes\
	libft/includes

# SOURCES
LIB = \
	libft/libft.a
SRC = \
	ft_bzero.s\
	ft_strcat.s\
	ft_isalpha.s\
	ft_isdigit.s\
	ft_isalnum.s\
	ft_isascii.s\
	ft_isprint.s\
	ft_toupper.s\
	ft_tolower.s\
	ft_strlen.s\
	ft_putstr.s\
	ft_putchr.s\
	ft_puts.s\
	ft_memset.s\
	ft_memcpy.s\
	ft_strdup.s\
	ft_strcpy.s\
	ft_cat.s\
	ft_putnbr.s\
	ft_putchr_fd.s\
	ft_putstr_fd.s\
	ft_putnbr_fd.s\

# **************************************************************************** #

# DEBUG
DEVNAME = libfts
DEVMAIN = main.c

# ALLOWED EXTENSIONS
EXTENSIONS = .c .s


# **************************************************************************** #

.PHONY: all $(NAME) build clean fclean re dev
.SILENT:

LIBS = $(addprefix $(LIBDIR)/, $(LIB))

SRC := $(filter $(addprefix %, $(EXTENSIONS)), $(SRC))
SRCS = $(addprefix $(SRCDIR)/, $(SRC))
OBJS = $(addprefix $(OBJDIR)/, $(addsuffix .o, $(basename $(SRC))))
OBJS_DIRS = $(sort $(dir $(OBJS)))

INCS_DIRS = $(addsuffix /, $(INCDIR))
INCS_DIRS += $(addsuffix /, $(dir $(LIBS)))
INCS = $(addprefix -I , $(INCS_DIRS))

TEMPNAME = $(addprefix $(OBJDIR)/, $(NAME))
DEVMAIN_OBJ = $(addprefix $(OBJDIR)/, $(addsuffix .o, $(basename $(DEVMAIN))))

all: $(NAME)
$(NAME): build $(LIBS) $(OBJS)
	ar rc $(TEMPNAME) $(OBJS)
	libtool -static -o $(NAME) $(TEMPNAME) $(LIBS)
	ranlib $(NAME)
build:
	mkdir -p $(OBJDIR)
	mkdir -p $(OBJS_DIRS)
clean:
	rm -f $(TEMPNAME)
	rm -f $(LIBS)
	rm -f $(OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean all

dev: build $(LIBS) $(OBJS) $(DEVMAIN_OBJ)
	gcc -o $(DEVNAME) $(LIBS) $(OBJS) $(DEVMAIN_OBJ) $(INCS)
	./$(DEVNAME)

$(LIBDIR)/%.a:
	make -s -C $(@D)
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) -c -o $@ $< $(INCS) $(CCFLAGS)
$(OBJDIR)/%.o: $(SRCDIR)/%.s
	$(ASM) -o $@ $< $(INCS) $(ASMFLAGS)
