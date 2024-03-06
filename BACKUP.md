# EXPLANATION FOR THE 'BACKUP.SH' SCRIPT

# Argument Validation:
  - The script checks if the number of arguments provided is exactly 2. If not, it displays usage information and exits.
  - It ensures that the user provides both the source directory and the destination directory.

# Check Source Directory Existence:
  - Verifies if the source directory exists. If not, it displays an error message and exits.
  - This step ensures that the script can proceed with creating a backup only if the source directory exists.

# Create Destination Directory:
  - Creates the destination directory if it doesn't already exist.
  - This step ensures that the backup can be stored in the specified destination directory.

# Timestamp Generation:
  - Generates a timestamp using the date command with the format %Y%m%d%H%M%S.
  - This timestamp will be used to uniquely identify the backup file and prevent overwriting existing backups.

# Backup Filename Creation:
  - Constructs the backup filename using the destination directory and the generated timestamp.
  - The backup file will be a tar archive (.tar.gz) with a name indicating the timestamp.

# Creating the Backup:
  - Uses the tar command to create a compressed tar archive of the source directory.
  - '-c': Create a new archive.
  - '-z': Compress the archive using gzip.
  - '-f': Specify the filename of the archive.
  - The source directory is specified as an argument to tar.

# Displaying Backup Information:
  - Prints a message indicating that the backup has been created along with the filename.
  - Provides the user with information about where the backup file is stored for reference.

# Script Execution:
  - The script is designed to be executed with two arguments: the source directory and the destination directory.
  - If the user fails to provide the required arguments, the script will display usage information and exit.
# SUMMARY
This backup script ensures that backups are created reliably by validating arguments, checking directory existence, and providing informative messages to the user. It encapsulates the backup process into a simple and automated script, making it convenient to use for backup tasks.



    
