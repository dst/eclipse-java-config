#!/bin/bash

# Dariusz Stefanski
# 21.09.2013
#
# It sorts a file with Eclipse code formatter,
# but it doesn't destroy XML schema.

file="formatter.xml "
tmpFile=`mktemp`

head -n3 $file > $tmpFile
grep setting $file | sort >> $tmpFile
tail -n2 $file >> $tmpFile

mv $tmpFile $file
