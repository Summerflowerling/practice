#!/usr/bin/env python
#import RPi.GPIO as gpio
import rospy
from std_msgs.msg import String
from geometry_msgs.msg import Twist
temp = 0
flag = 0

def callback(data):
     
    rospy.loginfo(data.linear)
    
def listener():

    rospy.init_node('listener', anonymous=True)
    rospy.Subscriber("cmd_vel", Twist, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
