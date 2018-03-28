#!/usr/bin/env python
#import RPi.GPIO as gpio
import rospy
from keyboard_control_gpio.msg import keyboard
#gpio.setmode(goio.BCM)

#####  word control #####
#w: control Pin 4 of BCM mode

#s: control Pin 18 of BCM mode

#a: control Pin 22 of BCM mode

#d: control Pin 24 of BCM mode

#c: close all pin 
#########################

def callback(data):
    rospy.loginfo(data)
    if data == 'w' :
        gpio.output(4,gpio.HIGH)
        gpio.output(18,gpio.LOW)
        gpio.output(22,gpio.LOW)
        gpio.output(24,gpio.LOW)
    elif data == 's' :
        gpio.output(4,gpio.LOW)
        gpio.output(18,gpio.HIGH)
        gpio.output(22,gpio.LOW)
        gpio.output(24,gpio.LOW)
    elif data == 'a' :
        gpio.output(4,gpio.LOW)
        gpio.output(18,gpio.LOW)
        gpio.output(22,gpio.HIGH)
        gpio.output(24,gpio.LOW)
    elif data == 'd' :
        gpio.output(4,gpio.LOW)
        gpio.output(18,gpio.LOW)
        gpio.output(22,gpio.LOW)
        gpio.output(24,gpio.HIGH)
    elif data == ' ' or key == 'c' :      
        gpio.output(4,gpio.LOW)
        gpio.output(18,gpio.LOW)
        gpio.output(22,gpio.LOW)
        gpio.output(24,gpio.LOW)
    else:
            if (key == '\x03'):
                break   
    #rate = rospy.Rate(10) # 10hz
    #rate.sleep()
    
def listener():
    #gpio.setup(4,gpio.OUT)
    #gpio.setup(18,gpio.OUT)
    #gpio.setup(22,gpio.OUT)
    #gpio.setup(24,gpio.OUT)
    rospy.init_node('keyboard_control_LED_sub', anonymous=True)
    rospy.Subscriber("/keyboard_control", keyboard, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
