#!/bin/bash

# THIS FILE SHOULD BE PLACED INTO "$SteamLibrary/steamapps/common/Devil May Cry HD Collection/" AND RUN FROM THERE!

# dmc1 is available, BUT should not be used, as it will cause issues. DMC2/3 work fine from brief tests.

# Handle if no argument is specified
if [ -z "$1" ]
then
	echo "Usage: ./dmc_flip.sh [game]"
	echo "Valid games are: \"dmc1\", \"dmc2\", \"dmc3\""
	exit
fi

# Check if argument is valid
if [[ "$1" == *"dmc"* ]]; then
	cd data
	cd "$1"
	# ffmpeg can't do in-place conversion
	mkdir -p Video.bak
	# Handle if selection is invalid
	# Todo: make sure to not allow anything other than dmc1/2/3/_launcher
else
	echo "Invalid selection"
	echo "Valid games are: \"dmc1\", \"dmc2\", \"dmc3\""
	exit
fi

cd Video

# Flip the videos and send them to the new folder
for file in ./*
do
  ffmpeg -loglevel error -i "$file" -vf vflip -b:v 4M -maxrate 6M -bufsize 2M -c:a copy "../Video.bak/$file"
done

cd ..

# Delete the old folder and replace it with the new one
rm -rf Video ; mv Video.bak Video

cd ../..
