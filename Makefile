.PHONY: chafa neo

all: chafa neo trekscii

chafa:
	cd chafa && \
	./autogen.sh && \
	./configure --prefix=`pwd`/dist --enable-gtk-doc && \
	$(MAKE) -j && \
	$(MAKE) install

neo:
	cd neo && \
	./autogen.sh && \
	./configure --prefix=`pwd`/dist && \
	$(MAKE) -j && \
	$(MAKE) install

trekscii:
	cd trekscii && \
	$(MAKE) -j
