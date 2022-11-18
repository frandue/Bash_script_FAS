#!/bin/bash/
set -x
pwd >directorio.txt
dir=$(cat directorio.txt)
mkdir $dir/foo/
mkdir $dir/foo/dummy/
cd $dir/foo/dummy/
cat file1.txt 
echo 'Me encanta la bash' > file1.txt
touch file2.txt
cd
mkdir $dir/foo/empty/
cd $dir/foo/
tree $dir/foo
