#/bin/bash
INPUT_DIR=$1
OUTPUT_DIR=$2

for FILE in $INPUT_DIR/*
do
    FONT_NAME=$(fc-scan $FILE | grep fullname: | node ./helper/font-name-extractor)
    cp $FILE $OUTPUT_DIR/$FONT_NAME
done