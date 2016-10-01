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

    //fill in the struct and vector we pack 2 imgDataStruct
    
    //pkg#1
    data.label="one"; data.size=10; data.stride=217 ; data.dataOffset=4; 
    data.Data[0]=10; data.Data[1]=100;data.Data[2]=36; data.Data[3]=1000;
    msg.images.push_back(data);// vector operation std::vector  push_back(),resize()...

    //ref:  \
    http://answers.ros.org/question/60614/how-to-publish-a-vector-of-unknown-length-of-structs-in-ros/           \
    http://wiki.ros.org/msg


    //pkg#2
    data.label="two"; data.size=10; data.stride=218 ; data.dataOffset=4; 
    data.Data[0]=5566; data.Data[1]=13;data.Data[2]=14; data.Data[3]=16;
    msg.images.push_back(data);

    pub.publish(msg);

    ros::spinOnce();//this step really pub the msg
    
    ROS_INFO("I'm publisjing imgDataArray!!!");
    loop_rate.sleep();
    
    }

    return 0;
}
