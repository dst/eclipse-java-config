#!/bin/bash -x

# Dariusz Stefanski
# 21.09.2013
#
# It splits all templates for multiple lines for better readability.

for f in *xml
do
  notNormalized=`grep "</template></templates>" $f` 
  if [ -n "$notNormalized" ]
  then
    sed -i "s/>/>\n/g" $f

    # &: matched pattern
    sed -i "s/<\/template>/\n&/" $f 
  fi
done 
