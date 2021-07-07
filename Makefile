
PREFIX = /usr/local

drb: drb.sh drb.awk drb.tsv
	cat drb.sh > $@
	echo 'exit 0' >> $@
	echo "#EOF" >> $@
	tar cz drb.awk drb.tsv >> $@
	chmod +x $@

test: drb.sh
	shellcheck -s sh drb.sh

clean:
	rm -f drb

install: drb
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f drb $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/drb

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/drb

.PHONY: test clean install uninstall

