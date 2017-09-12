#! /bin/bash

echo "Enter a directory where you want to count the no. of files (Ex. /home/valid_dir_name) :"
read path

if [ -d $path ]
then
	cd $path

echo "\nNow lets play a game !! Guess the no. of files in the directory ?"
read resp
i=1

file_cnt=`eval ls -l | wc -l`

while [ $file_cnt -ne $resp ]
do
	if [ $file_cnt -le $resp ]
	then
		echo "Your guess is too high. Enter another number "
		read resp
		i=`expr $i + 1`
	else
		echo "Your guess is too low. Enter another number"
		read resp
		i=`expr $i + 1`
	fi
done

echo "\nCongratulations !! You guessed it right on $i attempts\n"

else
	echo "\nDirectory not found. Please enter a valid directory\n"

fi
