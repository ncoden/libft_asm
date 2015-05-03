# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ncoden <ncoden@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/29 06:56:00 by ncoden            #+#    #+#              #
#    Updated: 2015/05/03 17:31:15 by ncoden           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = perf_tests

# COMPILATION
CC = gcc
CCFLAGS = -Wall -Werror -Wextra

ASM = ~/.brew/Cellar/nasm/2.11.08own/bin/nasm
# 2.11.08own : NASM modified to accept extern redeclaration as global
ASMFLAGS = -f macho64
LNKFLAGS = -macosx_version_min 10.8 -lSystem

# DIRECTORIES
LIBDIR = .
SRCDIR = src
TESTDIR = tests
OBJDIR = obj
INCDIR = \
	includes\
	../libft/includes

# SOURCES
LIB = \
	../libft/libft.a
SRC = \
	main.c\
TESTS = \
	test_register_copy.s

# **************************************************************************** #

# ALLOWED EXTENSIONS
EXTENSIONS = .c .s

# **************************************************************************** #

.PHONY: all $(NAME) build clean fclean re dev
.SILENT:

LIBS = $(addprefix $(LIBDIR)/, $(LIB))

SRC += TESTS
SRC := $(filter $(addprefix %, $(EXTENSIONS)), $(SRC))
OBJS = $(addprefix $(OBJDIR)/, $(addsuffix .o, $(basename $(SRC))))
OBJS_DIRS = $(sort $(dir $(OBJS)))

INCS_DIRS = $(addsuffix /, $(INCDIR))
INCS_DIRS += $(addsuffix /, $(dir $(LIBS)))
INCS = $(addprefix -I , $(INCS_DIRS))

all: $(NAME)
$(NAME): build $(LIBS) $(OBJS)
	gcc -o $(NAME) $(LIBS) $(OBJS) $(INCS)
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

$(LIBDIR)/%.a:
	make -s -C $(@D)
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) -c -o $@ $< $(INCS) $(CCFLAGS)
$(OBJDIR)/%.o: $(SRCDIR)/%.s
	$(ASM) -o $@ $< $(INCS) $(ASMFLAGS)
$(OBJDIR)/%.o: $(TESTDIR)/%.c
	$(CC) -c -o $@ $< $(INCS) $(CCFLAGS)
$(OBJDIR)/%.o: $(TESTDIR)/%.s
	$(ASM) -o $@ $< $(INCS) $(ASMFLAGS)
