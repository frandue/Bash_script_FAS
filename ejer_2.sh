#!/bin/bash/

set -x
pwd >directorio.txt
dir=$(cat directorio.txt)

cd $dir/foo/dummy/

cp file1.txt file2.txt

mv file2.txt $dir/foo/empty/

cd

tree $dir/foo
