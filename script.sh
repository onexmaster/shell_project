clear
#!/bin/bash
tput setaf 3
echo "M E N U"
tput sgr0
echo "1. Copy a File"
echo "2. Move a file"
echo "3. Remove a File"
echo "4. Exit"
echo "Choose your Option"
read option
case "$option" in
1) echo "Enter file name to copy"
read filecopy
echo "Enter file name to which the file has to be copied"
read filecopy2
if [ -e $filecopy ]
then 	
	cp $filecopy $filecopy2
	echo "File Copy Sucessful"
else
	echo "File does not exist"
fi
;;
2) echo "Enter the file to move"
read filemove
echo "Enter the destination"
read dest
if [ -e $filemove ]
then
	if [ -d $dest ]
	then
		mv  $filemove $dest
		echo "File move Sucessful"
		
	fi
else
	echo "The File does not exist" 
fi
;;
3) echo "Select a file to delete"
read filedelete
if [ -e $filedelete ]
then
	rm -i $filedelete
	echo "File delete succesful"
else
	echo "The file does not exsit"
fi
;;
4) echo "Exiting"
exit;;
esac

