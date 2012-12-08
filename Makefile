#
# Automatically generated by ./Configure -- DO NOT EDIT!
#

CC = gcc
COPT = -g -O
CEXTRA = 
LEXTRA = 
LFLAGS =   -lnsl
CFLAGS = $(CEXTRA) $(COPT)

PROG = netris
HEADERS = netris.h

SRCS = game.c curses.c shapes.c board.c util.c inet.c robot.c version.c
OBJS = game.o curses.o shapes.o board.o util.o inet.o robot.o version.o
DISTFILES = README FAQ COPYING VERSION Configure netris.h sr.c robot_desc game.c curses.c shapes.c board.c util.c inet.c robot.c

all: Makefile config.h proto.h $(PROG) sr

$(PROG): $(OBJS)
	$(CC) -o $(PROG) $(OBJS) $(LFLAGS)

sr: sr.o
	$(CC) -o sr sr.o $(LFLAGS)

.c.o:
	$(CC) $(CFLAGS) -c $<

Makefile config.h: Configure
	@echo "Makefile and/or config.h is out of date"
	@echo "Run ./Configure now"
	@false

version.c: VERSION
	@echo "Creating version.c"
	@sed -e 's/^\(.*\)$$/char *version_string = "\1";/' VERSION > $@

proto.h: $(SRCS)
	@touch $@
	@mv $@ $@.old
	@cat $(SRCS) | grep '^ExtFunc[ 	]' | sed -e 's/)$$/);/' > $@
	@if diff $@.old $@ > /dev/null 2>&1; then :; else \
		echo "proto.h changed"; \
		touch proto.chg; \
	fi
	@rm -f $@.old

depend: proto.h $(SRCS)
	@echo "Checking dependencies"
	@sed -n -e '1,/make depend #####$$/p' Makefile > Makefile.new
	@$(CC) -M $(SRCS) | sed -e 's/proto\.h/proto.chg/g' >> Makefile.new
	@mv -f Makefile.new Makefile

dist: $(DISTFILES)
	@vers=`cat VERSION`; \
	dir="netris-$$vers"; \
	echo "Creating $$dir directory"; \
	rm -rf $$dir; \
	mkdir $$dir; \
	cp $(DISTFILES) $$dir; \
	chmod 755 $$dir; \
	chmod 644 $$dir/*; \
	chmod 755 $$dir/Configure; \
	echo "Creating $$dir.tar.gz"; \
	tar -cvzof $$dir.tar.gz $$dir

clean:
	rm -f proto.h proto.chg $(PROG) $(OBJS) version.c test.c a.out sr sr.o

cleandir: clean
	rm -f .depend Makefile config.h

##### DO NOT EDIT OR DELETE THIS LINE, it's needed by make depend #####
game.o: game.c netris.h config.h /usr/include/getopt.h \
 /usr/include/ctype.h /usr/include/features.h /usr/include/bits/predefs.h \
 /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
 /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
 /usr/include/bits/types.h /usr/include/bits/typesizes.h \
 /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/memory.h /usr/include/string.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stddef.h \
 /usr/include/sys/time.h /usr/include/time.h /usr/include/bits/time.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/assert.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stdarg.h \
 /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
 /usr/include/bits/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/bits/pthreadtypes.h /usr/include/bits/sigthread.h proto.chg \
 /usr/include/stdlib.h /usr/include/sys/types.h \
 /usr/include/sys/sysmacros.h /usr/include/alloca.h \
 /usr/include/netinet/in.h /usr/include/stdint.h \
 /usr/include/bits/wchar.h /usr/include/sys/socket.h \
 /usr/include/sys/uio.h /usr/include/bits/uio.h \
 /usr/include/bits/socket.h /usr/include/bits/sockaddr.h \
 /usr/include/asm/socket.h /usr/include/asm-generic/socket.h \
 /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h \
 /usr/include/bits/in.h
shapes.o: shapes.c netris.h config.h /usr/include/getopt.h \
 /usr/include/ctype.h /usr/include/features.h /usr/include/bits/predefs.h \
 /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
 /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
 /usr/include/bits/types.h /usr/include/bits/typesizes.h \
 /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/memory.h /usr/include/string.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stddef.h \
 /usr/include/sys/time.h /usr/include/time.h /usr/include/bits/time.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/assert.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stdarg.h \
 /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
 /usr/include/bits/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/bits/pthreadtypes.h /usr/include/bits/sigthread.h proto.chg \
 /usr/include/stdlib.h /usr/include/sys/types.h \
 /usr/include/sys/sysmacros.h /usr/include/alloca.h
board.o: board.c netris.h config.h /usr/include/getopt.h \
 /usr/include/ctype.h /usr/include/features.h /usr/include/bits/predefs.h \
 /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
 /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
 /usr/include/bits/types.h /usr/include/bits/typesizes.h \
 /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/memory.h /usr/include/string.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stddef.h \
 /usr/include/sys/time.h /usr/include/time.h /usr/include/bits/time.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/assert.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stdarg.h \
 /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
 /usr/include/bits/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/bits/pthreadtypes.h /usr/include/bits/sigthread.h proto.chg \
 /usr/include/stdlib.h /usr/include/sys/types.h \
 /usr/include/sys/sysmacros.h /usr/include/alloca.h
util.o: util.c netris.h config.h /usr/include/getopt.h \
 /usr/include/ctype.h /usr/include/features.h /usr/include/bits/predefs.h \
 /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
 /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
 /usr/include/bits/types.h /usr/include/bits/typesizes.h \
 /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/memory.h /usr/include/string.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stddef.h \
 /usr/include/sys/time.h /usr/include/time.h /usr/include/bits/time.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/assert.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stdarg.h \
 /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
 /usr/include/bits/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/bits/pthreadtypes.h /usr/include/bits/sigthread.h proto.chg \
 /usr/include/stdlib.h /usr/include/sys/types.h \
 /usr/include/sys/sysmacros.h /usr/include/alloca.h /usr/include/unistd.h \
 /usr/include/bits/posix_opt.h /usr/include/bits/confname.h \
 /usr/include/netdb.h /usr/include/netinet/in.h /usr/include/stdint.h \
 /usr/include/bits/wchar.h /usr/include/sys/socket.h \
 /usr/include/sys/uio.h /usr/include/bits/uio.h \
 /usr/include/bits/socket.h /usr/include/bits/sockaddr.h \
 /usr/include/asm/socket.h /usr/include/asm-generic/socket.h \
 /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h \
 /usr/include/bits/in.h /usr/include/rpc/netdb.h \
 /usr/include/bits/netdb.h /usr/include/errno.h /usr/include/bits/errno.h \
 /usr/include/linux/errno.h /usr/include/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h
inet.o: inet.c netris.h config.h /usr/include/getopt.h \
 /usr/include/ctype.h /usr/include/features.h /usr/include/bits/predefs.h \
 /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
 /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
 /usr/include/bits/types.h /usr/include/bits/typesizes.h \
 /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/memory.h /usr/include/string.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stddef.h \
 /usr/include/sys/time.h /usr/include/time.h /usr/include/bits/time.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/assert.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stdarg.h \
 /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
 /usr/include/bits/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/bits/pthreadtypes.h /usr/include/bits/sigthread.h proto.chg \
 /usr/include/sys/types.h /usr/include/sys/sysmacros.h \
 /usr/include/unistd.h /usr/include/bits/posix_opt.h \
 /usr/include/bits/confname.h /usr/include/stdlib.h /usr/include/alloca.h \
 /usr/include/sys/socket.h /usr/include/sys/uio.h /usr/include/bits/uio.h \
 /usr/include/bits/socket.h /usr/include/bits/sockaddr.h \
 /usr/include/asm/socket.h /usr/include/asm-generic/socket.h \
 /usr/include/asm/sockios.h /usr/include/asm-generic/sockios.h \
 /usr/include/netinet/in.h /usr/include/stdint.h \
 /usr/include/bits/wchar.h /usr/include/bits/in.h /usr/include/netdb.h \
 /usr/include/rpc/netdb.h /usr/include/bits/netdb.h /usr/include/errno.h \
 /usr/include/bits/errno.h /usr/include/linux/errno.h \
 /usr/include/asm/errno.h /usr/include/asm-generic/errno.h \
 /usr/include/asm-generic/errno-base.h
robot.o: robot.c netris.h config.h /usr/include/getopt.h \
 /usr/include/ctype.h /usr/include/features.h /usr/include/bits/predefs.h \
 /usr/include/sys/cdefs.h /usr/include/bits/wordsize.h \
 /usr/include/gnu/stubs.h /usr/include/gnu/stubs-32.h \
 /usr/include/bits/types.h /usr/include/bits/typesizes.h \
 /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/bits/byteswap.h /usr/include/xlocale.h \
 /usr/include/memory.h /usr/include/string.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stddef.h \
 /usr/include/sys/time.h /usr/include/time.h /usr/include/bits/time.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/assert.h /usr/include/stdio.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/lib/gcc/i486-linux-gnu/4.4.5/include/stdarg.h \
 /usr/include/bits/stdio_lim.h /usr/include/bits/sys_errlist.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/sigaction.h \
 /usr/include/bits/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/bits/pthreadtypes.h /usr/include/bits/sigthread.h proto.chg \
 /usr/include/unistd.h /usr/include/bits/posix_opt.h \
 /usr/include/bits/confname.h /usr/include/stdlib.h \
 /usr/include/sys/types.h /usr/include/sys/sysmacros.h \
 /usr/include/alloca.h /usr/include/fcntl.h /usr/include/bits/fcntl.h \
 /usr/include/errno.h /usr/include/bits/errno.h \
 /usr/include/linux/errno.h /usr/include/asm/errno.h \
 /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h
version.o: version.c