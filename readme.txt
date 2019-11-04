>>> Steps to Execute this bash Script >>>>>>>


1. First setup the email server, I have used google email and configure it (tutorials are given online) then install mailutils package by,
     sudo apt-get install mailutils

2. First give this file a permission so that it can easily executed
     sudo chmod 777 copy.sh
           OR
     sudo chmod +x copy.sh

3. Pass 2 arguments when this script run, first arg will be the path of directory which you want to poll and then 2nd where the files of polling directory are copied
   for comparison
 
   like,
   sudo ./copy.sh /home/username/pathto/dir /home/username/pathto/copy_dir

4. Edit the email to your email in the bash script


                          Enjoy
                            &
 <<<<<<<<<<<<<<<<<<<<<< Happy POLLING >>>>>>>>>>>>>>>>>>>>
