#/bin/bash
DEFAULT_TEMP_DIR=./temp
DEFAULT_OUTPUT_DIR=./output
DEFAULT_REMOVE_TEMP_FOLDER=1

INPUT_URL=$1
OUTPUT_DIR="${2:-$DEFAULT_OUTPUT_DIR}"
TEMP_DIR="${3:-$DEFAULT_TEMP_DIR}"
REMOVE_TEMP_FOLDER="${4:-$DEFAULT_REMOVE_TEMP_FOLDER}"

mkdir $TEMP_DIR
mkdir $OUTPUT_DIR

if [ $REMOVE_TEMP_FOLDER == 1 ]; then
    ./download-fonts-from-css-font-stylesheet.sh $INPUT_URL $TEMP_DIR && 
    ./write-file-name-from-font-information.sh $TEMP_DIR $OUTPUT_DIR &&
    rm -r $TEMP_DIR
else
    ./download-fonts-from-css-font-stylesheet.sh $INPUT_URL $TEMP_DIR && 
    ./write-file-name-from-font-information.sh $TEMP_DIR $OUTPUT_DIR
fi