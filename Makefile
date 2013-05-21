sinclude config.mk

all :

install :
	install -d $(DESTDIR)$(PREFIX)/bin
	install -m 0755 ./git-notify $(DESTDIR)$(PREFIX)/bin

