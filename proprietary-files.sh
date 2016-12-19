#!/bin/sh

INDIR=/run/media/fire/f8fdcd21-e620-4c93-888c-2fbf12a25043/Ulefone_Metal/F5B_GQ3030AH1_ulefone_20161117/F5B_GQ3030AH1_ulefone_20161117/system
OUTDIR=/run/media/fire/62e29fa6-4714-4edb-a9ba-b05aef4a151d/Mediatek/AOSP_N/vendor/ulefone/metal/

COUNT=`cat proprietary-blobs.txt | grep -v ^# | grep -v ^$ | wc -l | awk {'print $1'}`
for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$`; do
#    COUNT=`expr $COUNT - 1`
    NEWFILE=`echo ${FILE}|sed 's/^\-//g;'`
    mkdir -p `dirname $OUTDIR/$NEWFILE` 2>/dev/null
    cp $INDIR/$NEWFILE $OUTDIR/$NEWFILE
done
