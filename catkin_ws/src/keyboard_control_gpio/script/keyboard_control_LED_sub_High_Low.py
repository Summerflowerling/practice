#!/usr/bin/env python
#import RPi.GPIO as gpio
import rospy
from keyboard_control_gpio.msg import keyboard
gpio.setmode(gpio.BCM)
gpio.setup(4,gpio.OUT)

def callback(data):
    rospy.loginfo(data.word)
    if data.word == 'q' :
        gpio.output(4,gpio.HIGH)
    elif data.word == 'a' :
        gpio.output(4,gpio.LOW)  
    #rate = rospy.Rate(10) # 10hz
    #rate.sleep()
    
def listener():
    rospy.init_node('keyboard_control_LED_sub_High_Low', anonymous=True)
    rospy.Subscriber("/keyboard_control", keyboard, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
