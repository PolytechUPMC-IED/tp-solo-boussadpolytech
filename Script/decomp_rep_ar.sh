#!/bin/sh
#decomp_rep__ar


liste=`ls $1`


for i in $liste ;do

filename=`basename $i`


extension=${filename##*.}
echo $extension

if [[ $extension == "tgz" ]]
then
echo "$1/$filename"
decomp_ar.sh $1/$filename
fi
done
