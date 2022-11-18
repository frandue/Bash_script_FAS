#!/bin/bash/
set -x
pwd >directorio.txt
dir=$(cat directorio.txt)
texto="$*"
varn=""
if [ "$texto" == "$varn" ]
then       	
	texto1="Que me gusta la bash"
else
	texto1="$*"
fi

mkdir $dir/foo/
mkdir $dir/foo/dummy/
cd $dir/foo/dummy/
touch file1.txt
echo "${texto1:0}" > file1.txt
touch file2.txt
cd 
mkdir $dir/foo/empty
cd $dir/foo/dummy/
cp file1.txt file2.txt
mv file2.txt $dir/foo/empty/
