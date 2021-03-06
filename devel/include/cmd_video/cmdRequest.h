// Generated by gencpp from file cmd_video/cmdRequest.msg
// DO NOT EDIT!


#ifndef CMD_VIDEO_MESSAGE_CMDREQUEST_H
#define CMD_VIDEO_MESSAGE_CMDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cmd_video
{
template <class ContainerAllocator>
struct cmdRequest_
{
  typedef cmdRequest_<ContainerAllocator> Type;

  cmdRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)  {
    }
  cmdRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::cmd_video::cmdRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cmd_video::cmdRequest_<ContainerAllocator> const> ConstPtr;

}; // struct cmdRequest_

typedef ::cmd_video::cmdRequest_<std::allocator<void> > cmdRequest;

typedef boost::shared_ptr< ::cmd_video::cmdRequest > cmdRequestPtr;
typedef boost::shared_ptr< ::cmd_video::cmdRequest const> cmdRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cmd_video::cmdRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cmd_video::cmdRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cmd_video::cmdRequest_<ContainerAllocator1> & lhs, const ::cmd_video::cmdRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cmd_video::cmdRequest_<ContainerAllocator1> & lhs, const ::cmd_video::cmdRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cmd_video

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cmd_video::cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cmd_video::cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cmd_video::cmdRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cmd_video::cmdRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cmd_video::cmdRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cmd_video::cmdRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cmd_video::cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b81376c2774ff4f956e5110e01c9db26";
  }

  static const char* value(const ::cmd_video::cmdRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb81376c2774ff4f9ULL;
  static const uint64_t static_value2 = 0x56e5110e01c9db26ULL;
};

template<class ContainerAllocator>
struct DataType< ::cmd_video::cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cmd_video/cmdRequest";
  }

  static const char* value(const ::cmd_video::cmdRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cmd_video::cmdRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 yaw\n"
;
  }

  static const char* value(const ::cmd_video::cmdRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cmd_video::cmdRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cmdRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cmd_video::cmdRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cmd_video::cmdRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CMD_VIDEO_MESSAGE_CMDREQUEST_H
