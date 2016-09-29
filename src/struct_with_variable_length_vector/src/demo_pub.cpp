//By YuehChuan
#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/include/struct_with_variable_length_vector/imgData.h"
#include "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/include/struct_with_variable_length_vector/imgDataArray.h"
//#include "struct_with_variable_length_vector/imagData.h"
//#include "struct_with_variable_length_vector/imageDataArray.h"
#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

int main(int argc, char **argv)
{
    
    //initial demo_pub node 
    ros::init(argc, argv,"demo_pub");
    //create node object
    ros::NodeHandle n;
    //create publisher object
    ros::Publisher pub = n.advertise<struct_with_variable_length_vector::imgDataArray>("test",1000);
    //create rate object
    ros::Rate loop_rate(10);
    //keep publishing
    while(ros::ok())
    {

    //create temp object and msg 
    struct_with_variable_length_vector::imgData data;//temp obj for copy
    struct_with_variable_length_vector::imgDataArray msg;//!!!create variable-length msg with element type "imgData"
    //think if we gen msg outside while loop what will happen?

    //fill in the struct and vector
    data.upperLeft=0; data.lowerRight=100; data.color="red" ; data.cameraID="one"; 

    
    msg.images.push_back(data);

    data.upperLeft=1; data.lowerRight=101; data.color="green" ; data.cameraID="two";        
    msg.images.push_back(data);


    pub.publish(msg);

    ros::spinOnce();//this step really pub the msg
    
    ROS_INFO("I'm publisjing omgDataArray!!!");
    loop_rate.sleep();
    
    }

    return 0;
}
