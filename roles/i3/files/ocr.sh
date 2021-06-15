#!bash
cdate=$(date +%s)'.png'

mydir=$(mktemp -dt "$(basename $0).XXXXXXXX" --tmpdir=/run/user/$(id -u)) # dir in RAM
myfile1=$(mktemp -t "$(basename $0).XXXXXXXX" --tmpdir=$mydir)'.png' # pic file in RAM
myfile2=$(mktemp -t "$(basename $0).XXXXXXXX" --tmpdir=$mydir) # txt file in RAM

maim --quality 10 -s $myfile1 # make screenshot
tesseract --oem 2 $myfile1 $myfile2 # get text from pic
cat $myfile2'.txt' | xclip -sel clip # send text to clipboard

rm -r $mydir # delete temp files
