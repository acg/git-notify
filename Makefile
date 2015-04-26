sinclude config.mk

all : configure

configure : config.mk

config.mk :
	./configure

install :
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 ./git-notify $(DESTDIR)$(PREFIX)/bin

