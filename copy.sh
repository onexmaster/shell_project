echo "Enter file name to copy"
read f1
echo "Enter file name"
read f2
if [ -e $f1 ]
then 	
	cp $f1 $f2
else
	echo "file does not exist"
fi
