#!/bin/bash

#benis
spurdo() {
    cat $FILE | sed "s/p\([aeiouy]\)/b\1\E/gI;
    s/juice/joose/gI;s/kek/geg/gI;
    s/epic/ebin/gI;
    s/america/clapistan/gI;
    s/right/rite/gI;
    s/your/ur/gI;
    s/\./ :DD/gI
    ;s/'//gI;
    s/,/ XDD/gI;
    s/wh/w/gI;
    s/th/d/gI;
    s/af/ab/gI;
    s/ap/ab/gI;
    s/ca/ga/gI;
    s/ck/gg/gI;
    s/co/go/gI;
    s/ev/eb/gI;
    s/ex/egz/gI;
    s/et/ed/gI;
    s/iv/ib/gI;
    s/it/id/gI;
    s/ke/ge/gI;
    s/nt/nd/gI;
    s/op/ob/gI;
    s/ot/od/gI;
    s/po/bo/gI;
    s/pe/be/gI;
    s/up/ub/gI;
    s/va/ba/gI;
    s/ck/gg/gI;
    s/cr/gr/gI;
    s/kn/gn/gI;
    s/lt/ld/gI;
    s/mm/m/gI;
    s/nt/dn/gI;
    s/pr/br/gI;
    s/ts/dz/gI;
    s/tr/dr/gI;
    s/bs/bz/gI;
    s/ds/dz/gI;
    s/es/es/gI;
    s/fs/fz/gI;
    s/gs/gz/gI;
    s/as/az/gI;
    s/ls/lz/gI;
    s/ms/mz/gI;
    s/ns/nz/gI;
    s/rs/rz/gI;
    s/ss/sz/gI;
    s/ts/tz/gI;
    s/us/uz/gI;
    s/ws/wz/gI;
    s/ys/yz/gI;
    s/alk/olk/gI;
    s/ing/ign/gI;
    s/ic/ig/gI;
    s/ng/nk/gI;
    s/ch/g/gI;
    s/te/de/gI" \
    >> spardo_out.txt
}

FILE=$1
spurdo
