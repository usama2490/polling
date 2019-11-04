#!/bin/sh

#Arg1 contains path of current directory i.e test_folder, Arg2 contains path of dest dir where file will be copied
dir="$1"
cp_dir="$2"

while true; do

	#Now copy all the files of curr dir to dest dir
	sudo cp "${dir}"/* $cp_dir
	if [ $? -eq 0 ]; then
		echo "Files are successfully copied"
	fi
	  echo "Waiting for any changes if occured or not!"


	  # Wait for 3 minutes and then compare the content of current directory with dest directory
        sleep 3m
        #filename=$(diff -rq $dir $cp_dir)

        #var=$(diff --brief -r "$dir" "$cp_dir" | grep $dir)


	# Compare the files and their content of both directories and store the name of file which is being changed in a variable called var
        var=$(diff -rq $dir $cp_dir)
        exit_code=$?
          echo "$var"

	#Checks on exit status of previous (i.e diff) command and perform actions accordingly  
        if [ $exit_code -eq 0 ]; then
          echo " Files are equal!"
        else
          echo " Files are different!"

	  #If the content of any file in the test_folder changes the email will be send to a root user of this machine i.e me 
          echo "There is a change in directory at time `date`" | mail -s "Change in content of file occurred" khanint6@gmail.com
        fi
done
