# Creating a backup script
The script creates a backup of a given directory and saves it in another directory with a timestamp.
It takes two arguments:
   - The source directory and the destination directory

# Write a shell script that checks the disk usage in a given directory.
The script can take two optional arguments and one compulsory argument...
  - '-d': which means that all files and directory within the specified directory or directories should be listed.
  - '-n': which means that the top N enteries should be returned.
  -list of directories: this will be the directories you want to check it's disk usage
- eg yourscript.sh -n 5 /var;
   should return the top 5 directories wrt disk usage in /var directory
-yourscript.sh -d /var
  should list both directories and files
Note: if -n argument is not given, it should return 8 enteries by default.

# Your login name: altschool i.e., home directory /home/altschool.
 The home directory contains the following sub-directories: 
 code, tests, personal, misc Unless otherwise specified, you are running commands from the home directory.

- a.Change directory to the tests directory using absolute pathname

- b.Change directory to the tests directory using relative pathname

- c.Use echo command to create a file named fileA with text content ‘Hello A’ in the misc directory

- d.Create an empty file named fileB in the misc directory. Populate the file with a dummy content afterwards

- e.Copy contents of fileA into fileC

- f.Move contents of fileB into fileD

- g.Create a tar archive called misc.tar for the contents of misc directory

- h.Compress the tar archive to create a misc.tar.gz file

- I. Create a user and force the user to change his/her password upon login

- J. Lock a users password

- K. Create a user with no login shell

- L. Disable password based authentication for ssh

- M. Disable root login for ssh
