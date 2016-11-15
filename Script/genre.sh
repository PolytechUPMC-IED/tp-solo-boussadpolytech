#!/bin/sh
#genre


$genre=$1

genre=`id3v2 -g $1`

echo $genre
