.PHONY: chafa init neo trekscii update

all: update chafa neo trekscii

chafa:
	cd chafa && \
	./autogen.sh && \
	./configure --prefix=`pwd`/dist --enable-gtk-doc && \
	$(MAKE) -j && \
	$(MAKE) install

init:
	git submodule update --init

neo:
	cd neo && \
	./autogen.sh && \
	./configure --prefix=`pwd`/dist && \
	$(MAKE) -j && \
	$(MAKE) install

trekscii:
	cd trekscii && \
	$(MAKE) -j

update:
	git submodule update --remote --merge

