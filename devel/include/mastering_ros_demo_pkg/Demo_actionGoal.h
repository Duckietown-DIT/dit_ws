// Generated by gencpp from file mastering_ros_demo_pkg/Demo_actionGoal.msg
// DO NOT EDIT!


#ifndef MASTERING_ROS_DEMO_PKG_MESSAGE_DEMO_ACTIONGOAL_H
#define MASTERING_ROS_DEMO_PKG_MESSAGE_DEMO_ACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mastering_ros_demo_pkg
{
template <class ContainerAllocator>
struct Demo_actionGoal_
{
  typedef Demo_actionGoal_<ContainerAllocator> Type;

  Demo_actionGoal_()
    : count(0)  {
    }
  Demo_actionGoal_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef int32_t _count_type;
  _count_type count;




  typedef boost::shared_ptr< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct Demo_actionGoal_

typedef ::mastering_ros_demo_pkg::Demo_actionGoal_<std::allocator<void> > Demo_actionGoal;

typedef boost::shared_ptr< ::mastering_ros_demo_pkg::Demo_actionGoal > Demo_actionGoalPtr;
typedef boost::shared_ptr< ::mastering_ros_demo_pkg::Demo_actionGoal const> Demo_actionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mastering_ros_demo_pkg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'mastering_ros_demo_pkg': ['/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/src/mastering_ros_demo_pkg/msg', '/home/schwarmcyc/Documents/HackMD-tutorial/dit_ws/devel/share/mastering_ros_demo_pkg/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "602d642babe509c7c59f497c23e716a9";
  }

  static const char* value(const ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x602d642babe509c7ULL;
  static const uint64_t static_value2 = 0xc59f497c23e716a9ULL;
};

template<class ContainerAllocator>
struct DataType< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mastering_ros_demo_pkg/Demo_actionGoal";
  }

  static const char* value(const ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
int32 count\n\
";
  }

  static const char* value(const ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Demo_actionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mastering_ros_demo_pkg::Demo_actionGoal_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<int32_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MASTERING_ROS_DEMO_PKG_MESSAGE_DEMO_ACTIONGOAL_H