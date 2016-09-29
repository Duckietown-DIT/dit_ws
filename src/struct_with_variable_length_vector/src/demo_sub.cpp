//YuehChuan
#include "ros/ros.h"
#include "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/include/struct_with_variable_length_vector/imgData.h"
#include "/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/include/struct_with_variable_length_vector/imgDataArray.h"
//#include "struct_with_variable_length_vector/imgData.h"
//#include "struct_with_variable_vector/imgDataArray.h"
#include <iostream>
#include <sstream>

//subscriber call back function
void subCB( const struct_with_variable_length_vector::imgDataArray::ConstPtr& msg)
{
    for( int i=0; i <msg->images.size(); ++i )
    {
        const struct_with_variable_length_vector::imgData &data = msg->images[i];
        ROS_INFO_STREAM("UL: "<< data.upperLeft<< "UR: " << data.lowerRight <<"color: " << data.color << "ID:" << data.cameraID);
    }

}

int main( int argc, char **argv)
{
    //initial demo_sub
    ros::init(argc, argv,"demo_sub");
    //Create nodehandle object
    ros::NodeHandle n;
    //create subscriber object
    ros::Subscriber sub = n.subscribe("test",1000,subCB);
    ros::spin();

    return 0;
}
