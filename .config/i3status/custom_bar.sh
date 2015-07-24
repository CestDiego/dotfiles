#!/bin/sh

i3status | while :
do
    read line
	  MPCSTAT=`mpc | grep -v '^volume:'`
	  if [ -z "${MPCSTAT}" ]; then
		    echo "$line" || exit 1
	  else
		    MPCSTAT=`echo "${MPCSTAT}" | sed 's,  *, ,g; 1h;1d;2G' | paste -d' ' -s -`
		    echo "${MPCSTAT} $line" || exit 1
	  fi
done
