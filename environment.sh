#/bin/bash

echo "Activating ROS..."
source /opt/ros/indigo/setup.bash
echo "...done."

#echo "Setting up PYTHONPATH."
export PYTHONPATH=/home/schwarmcyc/catkin_ws/src:$PYTHONPATH

echo "Setup ROS_HOSTNAME."
export ROS_HOSTNAME=$HOSTNAME.local
#export BUNNYTOWN_ROOT=$HOME/bunnytown

#echo "Building machines file..."
#make -C  $BUNNYTOWN_ROOT
#echo "...done"
echo "Activating development."
source /home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/setup.bash

# TODO: check that the time is >= 2015

# TODO: run a python script that checks all libraries are installed

exec "$@" #Passes arguments. Need this for ROS remote launching to work.
