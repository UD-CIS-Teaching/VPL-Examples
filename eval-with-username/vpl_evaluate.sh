# You need to load in the VPL environment variables from this script (it's already there)
source ./vpl_environment.sh

echo "#!/bin/bash" >> vpl_execution

# This line does the magic - note the $MOODLE_USER_NAME variable
#   also note that I wrapped it in quotes. I had a student with
#   apostrophes last semester!
# The fact that I'm passing into a python script I wrote (grader.py) is irrelevant;
#   the important part is that you have access to this magic variable.
# The $VPL_VARIATION value is also available if you set up Variations (which are cumbersome)
echo "python3 grader.py" $VPL_SUBFILE0 $VPL_VARIATION '"'$MOODLE_USER_NAME'"' >> vpl_execution

chmod +x vpl_execution
