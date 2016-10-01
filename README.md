# dit_ws
ROS
Tutorial of ROS message publish  and subscribe 
with variate-length array inside message.
using std::vector
ref#1:  
http://answers.ros.org/question/60614/how-to-publish-a-vector-of-unknown-length-of-structs-in-ros/


ref#2: 
https://hackmd.io/s/BJjIdd56

tested on
ubuntu14.04 ROS indigo

how to compile:

git clone https://github.com/Duckietown-DIT/dit_ws.git dit_ws

cd ~/dit_ws/

vim environment.sh

EDIT:
source /<YOUR-PATH-TO-dit_ws>/dit_ws/devel/setup.bash
source /home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/setup.bash

and save it.

source environment.sh

catkin_make

how to use:
open 3 teminal

#1
cd ~/dit_ws
source environment.sh
roscore

#2
cd ~/dit_ws
source environment.sh
rosrun struct_with_variable_length_vector demo_pub

#3
cd ~/dit_ws
source environment.sh
rosrun struct_with_variable_length_vector demo_sub


