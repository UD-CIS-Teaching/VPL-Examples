# You need to load in the VPL environment variables from this script (it's already there)
source ./vpl_environment.sh

echo "#!/bin/bash" >> vpl_execution

# This line does the magic - note the $MOODLE_USER_NAME variable
#   also note that I wrapped it in quotes. I had a student with
#   apostrophes last semester!
echo "python3 grader.py" $VPL_SUBFILE0 $VPL_VARIATION '"'$MOODLE_USER_NAME'"' >> vpl_execution

chmod +x vpl_execution
