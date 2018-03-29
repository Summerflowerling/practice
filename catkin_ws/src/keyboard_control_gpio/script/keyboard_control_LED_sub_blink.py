#!/usr/bin/env python
#import RPi.GPIO as gpio
import rospy
import time
from keyboard_control_gpio.msg import keyboard
gpio.setmode(gpio.BCM)
gpio.setup(22,gpio.OUT)


def callback(data):
    rospy.loginfo(data.word)
    if data.word == 'e' :
        while data.word != 'd':        
            gpio.output(22,gpio.HIGH)
            time.sleep(0.5)
            gpio.output(22,gpio.LOW)
	    time.sleep(0.5)
    elif data.word == 'd' :

    #rate = rospy.Rate(10) # 10hz
    #rate.sleep()
    
def listener():
    #gpio.setup(4,gpio.OUT)
    #gpio.setup(18,gpio.OUT)

    #gpio.setup(24,gpio.OUT)
    rospy.init_node('keyboard_control_LED_sub_blink', anonymous=True)
    rospy.Subscriber("/keyboard_control", keyboard, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
