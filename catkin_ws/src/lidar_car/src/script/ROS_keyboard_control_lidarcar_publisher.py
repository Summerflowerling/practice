#!/usr/bin/env python

# Copyright (c) 2011, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#    * Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#    * Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in the
#      documentation and/or other materials provided with the distribution.
#    * Neither the name of the Willow Garage, Inc. nor the names of its
#      contributors may be used to endorse or promote products derived from
#       this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

import rospy
import sys , select , termios , tty
from geometry_msgs.msg import PoseStamped , Twist
from std_msgs.msg import String
import time
import math ## use math.pi


msg = """
Control Lidar Car!
---------------------------
Moving around:
        w
   a    s    d
        x

w/x : increase/decrease linear velocity
a/d : increase/decrease angular velocity
space key, x : force stop

CTRL-C to quit
"""

## how to control

moveBindings = {
             'w':(1,0),
             's':(-1,0),
             'a':(0,-1),
             'd':(0,1),
             'x':(0,0),
               }

## read keyboard  
def getKey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

# set Lidar_car speed multiple
speed_multiple = 1
turn_multiple  = 0.1

## print spped and turn
def vels(speed , turn):
    return "currentls:\tspeed %s\tturn %s " % (speed,turn)



if __name__ == '__main__':
    
    # setting keyboard
    settings = termios.tcgetattr(sys.stdin)
    
    # set node
    rospy.init_node("ROS_keyboard_control_lidarcar_publish")

    # set Publisher
    pub = rospy.Publisher("/cmd_vel" , Twist , queue_size = 5)

    # set parameter
    speed  = 0
    turn   = 0   
    status = 0
    count  = 0
    acc    = 0.1
    control_speed = 0
    control_turn  = 68 * turn_multiple  ## 4.5 <= control_turn <= 9.0
    target_speed  = 0
    target_turn   = 0  
    
    try:
        while(1):
             
            # judge what the keyboard read
            key = getKey()
            if key in moveBindings.keys():
                speed = moveBindings[key][0]
                turn  = moveBindings[key][1]
            elif key == ' ' or key == 'x' :
                speed = 0
                turn  = 0
                control_speed = 0
                control_turn  = 68 * turn_multiple
                print ("Car stop!")
            else:
                if (key == '\x03'):
                    break     
            
            # compute the target_speed and target_turn 
            target_speed = speed * speed_multiple   # speed_multiple or -speed_multiple   (1  or  -1  )
            target_turn  = turn  * turn_multiple    # turn_multiple  or -turn_multiple    (0.1 or -0.1)
            
            # judge how are the control_speed and control_turn 
            if control_speed > -100 and control_speed < 100:
                control_speed = control_speed + target_speed   
            if control_turn > 4.5 and control_turn < 9.0: 
                control_turn  = control_turn  + target_turn     
             
            # print control_speed and control_trun
            print(vels(control_speed,control_turn))
           
            # Publish the /cmd_vel topic , message type is Twist.
            twist = Twist()   
            twist.linear.x  = control_speed ; twist.linear.y  = 0 ; twist.linear.z  = 0
            twist.angular.x = 0 ; twist.angular.y = 0 ; twist.angular.z = control_turn
            pub.publish(twist)
        
    except Exception as e : #rospy.ROSInterruptException
        print(e)
    finally:
        # Publish the /cmd_vel topic , message type is Twist.
        twist = Twist()
        twist.linear.x  = 0 ; twist.linear.y  = 0 ; twist.linear.z  = 0
        twist.angular.x = 0 ; twist.angular.y = 0 ; twist.angular.z = 0
        pub.publish(twist)

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    



"""
def talker():
    pub = rospy.Publisher('/keyboard_control', keyboard, queue_size=10)
    rospy.init_node('keyboard_control_LED_pub', anonymous=True)
    rate = rospy.Rate(100) # 10hz
    word = '' 
    while not rospy.is_shutdown():
        key = getKey()        
        if key == 'w' :
               target_linear_vel = target_linear_vel + 0.01
               status = status + 1
               print vels(target_linear_vel,target_angular_vel)
           elif key == 'x' :
               target_linear_vel = target_linear_vel - 0.01
               status = status + 1
               print vels(target_linear_vel,target_angular_vel)
           elif key == 'a' :
               target_angular_vel = target_angular_vel + 0.1
               status = status + 1
               print vels(target_linear_vel,target_angular_vel)
           elif key == 'd' :
               target_angular_vel = target_angular_vel - 0.1
               status = status + 1
               print vels(target_linear_vel,target_angular_vel)
           elif key == ' ' or key == 's' :
               target_linear_vel   = 0
               control_linear_vel  = 0
               target_angular_vel  = 0
               control_angular_vel = 0
               print vels(0, 0)
           elif status == 14 :
               print msg
               status = 0
           else:
               if (key == '\x03'):
                   break
        keyboard.data = key
        print(keyboard.data)
        #rospy.loginfo(hello_str)
        pub.publish(keyboard.data)
        rate.sleep()
"""

