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
