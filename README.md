# Font Tools

Welcome to my font tools.
This is a pretty tiny and simple library of small bash and node.js files to handle and expand my font library. Due to how they came to be those might also be helpful for recovery purposes etc.

## How to use them:

- Install Nodejs
- Run the scripts

## How to run the scripts:

### download-and-write-fontname-from-css-font-stylesheet.sh

This file runs both `download-fonts-from-css-font-stylesheet.sh` and `write-file-name-from-font-information.sh` in succession to both download and name the fonts accordingly. Its main usecase is for managing the download of `https://fonts.googleapis.com/`-links but may be used for other @font-face imports too.

#### Usage:

`download-and-write-fontname-from-css-font-stylesheet.sh <input-url> (output-dir) (temp-dl-dir) (remove-temp-dir)`

- `input-url`: URL to fetch the CSS file from
- `output-dir`: Where to put the downloaded and named fonts - DEFAULT: `output`
- `temp-dl-dir`: What the temporary download folder should be called - DEFAULT: `temp`
- `remove-temp-dir`: Remove the temporary download directory? - DEFAULT: `1`

### download-fonts-from-css-font-stylesheet.sh

Handles downloading fonts from a css @font-face file.

#### Usage:

`download-fonts-from-css-font-stylesheet.sh <input-url> (output-dir)`

- `input-url`: URL to fetch the CSS file from
- `output-dir`: Where to put the downloaded fonts - DEFAULT: `output`

### write-file-name-from-font-information.sh

Extracts font name and font style out of the font information to recover font filenames

#### Usage:

`write-file-name-from-font-information.sh <input-dir> <output-dir>`

- `input-dir`: Font files to rename
- `output-dir`: Where to put the renamed files

## Q&A:

### "Why did you use Node" or "Why didn't you use [x]"

Those tools were made to recover parts of my lost fonts, so I didn't want to start digging into bash scripting again. JS was enough for me.

Yes these tools could be rewritten with just plain bash scripting. No I will most likely not do that.

If a poor soul stumbles upon this and is really _that_ frustrated about the use of Node: I accept Pull Requests.

### "Will you add more tools?"

Maybe

### "Will you add my tools?"

Maybe, try to PR them.
