oecho "Select a file to delete"
read r1
if [ -e $r1 ]
then
	rm -i $r1
	echo "File delete succesful"
else
	echo"The file does not exsit"
fi

