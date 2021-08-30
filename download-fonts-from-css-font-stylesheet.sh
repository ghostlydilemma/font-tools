#/bin/bash
DEFAULT_OUTPUT_DIR=./output

INPUT_URL=$1
OUTPUT_DIR="${2:-$DEFAULT_OUTPUT_DIR}"

LINKS=$(curl $INPUT_URL | grep src | node ./helper/get-link-from-css-src.js)

mkdir $OUTPUT_DIR
cd $OUTPUT_DIR

for LINK in $LINKS
do
    curl -O $LINK
done