#!/bin/bash

# System perl path is hardcoded in a script two extraction levels down. Grr.
sudo yum -y install perl

FN='qp8hkfd2kk57d8320ufmaj5u1g358is0.run'
#FN='cuda-linux.10.2.89-27506705.run'
chmod +x $FN
./$FN -noprompt -nosymlink -no-man-page -prefix=${PREFIX}
rm -rf ${PREFIX}/samples
mv ${PREFIX}/lib64 ${PREFIX}/lib

# remove unneeded bits to get the size more manageable
rm -rf ${PREFIX}/{doc,extras,libnsight,nsight-compute-2019.5.0,nsightee_plugins,nsight-systems-2019.5.2}

# pkgconfig dir seems to no longer be there
#sed -i s/lib64/lib/g ${PREFIX}/pkgconfig/*.pc
