#! /bin/bash

# modify the relver of ghc, this saves on recompilations of cblrepo

for f in $*; do
  sed -e 's/ghc=7\.8\.0-1/ghc=7.8.1-1/' -i $f
  sed -e 's/--enable-split-objs//' -i $f
done
