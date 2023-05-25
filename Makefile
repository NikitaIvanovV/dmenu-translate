PREFIX    = /usr/local
BINPREFIX = $(DESTDIR)$(PREFIX)/bin
SCRIPT    = dmenu-translate

all:

install:
	install -d ${BINPREFIX}
	install ${SCRIPT} ${BINPREFIX}

uninstall:
	rm -f $(PREFIX)/bin/${SCRIPT}

.PHONY: all install uninstall
