PREFIX    ?= /usr/local
BINPREFIX := $(DESTDIR)$(PREFIX)/bin
SCRIPT    := dmenu-translate

all: gen

gen: README.md

install: gen
	install -d ${BINPREFIX}
	install ${SCRIPT} ${BINPREFIX}

uninstall:
	rm -f $(PREFIX)/bin/${SCRIPT}

README.md: ${SCRIPT}
	./copyconfig.sh

.PHONY: all gen install uninstall
