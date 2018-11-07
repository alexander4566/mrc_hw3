rosservice call /spawn 2 5.5 1.57 ""
rosservice call /turtle2/set_pen 255 0 0 5 0
rosservice call /turtle1/set_pen 0 255 0 5 0

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0, 0.0, 0.0]' '[0.0, 0.0, 1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[4, 0.0, 0.0]' '[0.0, 0.0, 0]'

rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[3, 0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, -3.14]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1.0, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 3.14]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, 0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.57]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0.0, 0.0]' '[0.0, 0.0, 0]'


