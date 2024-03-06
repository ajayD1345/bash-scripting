# Detailed explanation of the syshelt.sh script

  # Default Variables
   - DEFAULT_N=8: Sets the default value for the number of entries to return.                                               
                                                                                                                       
  # Function - Usage():
   - This function displays usage information for the script. It is called when the user provides incorrect arguments or 
     requests help.
                                                                                                                        
  # Parsing Command-Line Arguments:
   - The script uses the getopts built-in command to parse command-line options.
   - 'getopts' is used to iterate over the command-line options provided to the script.
   - The options are defined inside the 'while' loop using the 'getopts' command.
     In this case, '-d' and '-n' are defined as options.
   - The ':' after '-n' indicates that '-n' requires an argument (i.e., the number of entries).
   - If an invalid option is provided or an option requiring an argument is not provided with one, it will display an error 
     message and usage information.
                                                                                                                          
  # Shift:
   - 'shift $((OPTIND -1))': Shifts the positional parameters so that they don't include the options processed by 'getopts'.
   -  This ensures that the script can access the non-option arguments (in this case, the directory argument).
                                                                                                                          
 # Check for Directory Argument:
   - Checks if the number of arguments after option parsing is exactly 1 (i.e., the directory argument).
   - If not, it displays usage information.
                                                                                                                       
 # Variable Initialization:
   - Assigns the provided directory argument to the variable directory.
   - If the '-n' option is not provided, the 'num_entries' variable is set to the default value specified earlier.
                                                                                                                          
 #  Check Directory Existence:
   - Checks if the provided directory exists.
   - If not, it displays an error message and exits.
                                                                                                                        
# Display Disk Usage:
   - The du command is used to estimate file and directory space usage.
   - '-h': Print sizes in a human-readable format (e.g., 1K, 234M, 2G).
   - '-a': Include all files and directories, not just directories.
   - '-2>/dev/null': Redirects error output to /dev/null to suppress error messages.
   - 'sort -rh': Sorts the output numerically and in reverse order (largest to smallest).
   - 'head -n "$num_entries"': Displays the specified number of entries (default or user-provided) from the sorted output.
                                                                                                                            
# Run the Script:
   - If the user provides the '-d' option, it lists all files and directories within the specified directory.
   - If the user provides the '-n' option, it returns the top N entries based on disk usage.
   - If the user provides both options, it lists all files and directories within the specified directory and returns the top 
     'N' entries.
   - If the user provides only the directory argument, it returns the top N entries based on disk usage.
# summary
This script provides flexibility in terms of options for displaying disk usage information based on user requirements.
