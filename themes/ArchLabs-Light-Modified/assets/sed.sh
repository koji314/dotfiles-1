#!/bin/sh
sed -i \
         -e 's/#dfe1e8/rgb(0%,0%,0%)/g' \
         -e 's/#252933/rgb(100%,100%,100%)/g' \
    -e 's/#252933/rgb(50%,0%,0%)/g' \
     -e 's/#8fa1b3/rgb(0%,50%,0%)/g' \
     -e 's/#eff1f5/rgb(50%,0%,50%)/g' \
     -e 's/#252933/rgb(0%,0%,50%)/g' \
	$@