#!/bin/bash
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-jpeg8            \
            --disable-static        \
            --docdir=/usr/share/doc/libjpeg-turbo-1.5.3 && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install