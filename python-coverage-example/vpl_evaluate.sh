#! /bin/bash

# Run the environment variable initializer to get access to its variables
source ./vpl_environment.sh

# Start generating the script
echo "#!/bin/bash" >> vpl_execution
#### DO GRADING STUFF HERE

echo "echo \"<|--\"" >> vpl_execution
echo "echo \"-Coverage Report\"" >> vpl_execution
echo "echo \"After testing your file, I calculated its coverage.\"" >> vpl_execution
# The next few lines will allow you to cut off part of the file
##echo "echo 'I ignored everything after the line with \"def main():\"'" >> vpl_execution
##echo "sed -n '/def main():/q;p' $VPL_SUBFILE0 > _temp_.py" >> vpl_execution
##echo "mv _temp_.py $VPL_SUBFILE0" >> vpl_execution

# Actually run the code coverage commands
echo "coverage run $VPL_SUBFILE0 --branch >> nullfile" >> vpl_execution
echo "coverage report -m | sed -e 's/^/>/'" >> vpl_execution
echo "echo \"--|>\"" >> vpl_execution

# Make the file runnable
chmod +x vpl_execution
