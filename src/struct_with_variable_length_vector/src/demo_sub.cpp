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
        ROS_INFO("Here comes imgDataArray [%d] !!! ", i );
        ROS_INFO_STREAM("label:   "<< data.label<< "size:    " << data.size <<"stride:    " << data.stride << "dataOffset:   " << data.dataOffset);
        ROS_INFO_STREAM("Data[0]  :   "<< data.Data[0]<< "Data[1]   :  " << data.Data[1] <<"Data[2]   :   " << data.Data[2] << "Data[3]   :   " << data.Data[3]);
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
