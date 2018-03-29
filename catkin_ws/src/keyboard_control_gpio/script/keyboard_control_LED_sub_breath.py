#!/usr/bin/env python
#import RPi.GPIO as gpio
import rospy
import time
from keyboard_control_gpio.msg import keyboard

gpio.setmode(gpio.BCM)
gpio.setup(18,gpio.OUT)
pwm18 = gpio.PWM(18,1000)

def callback(data):
    if data.word == 'w' :
        i = 0
        while data.word != 's':
            for i in range(100):
                pwm18.ChangeDutyCycle(i)
                time.sleep(0.02)
            for i in range(0,100):
                j = 100 - i
                pwm18.ChangeDutyCycle(j)
                time.sleep(0.02)                       
    elif data.word == 's' :
        gpio.output(18,gpio.LOW)

  
    #rate = rospy.Rate(10) # 10hz
    #rate.sleep()
    
def listener():
    rospy.init_node('keyboard_control_LED_sub_breath', anonymous=True)
    rospy.Subscriber("/keyboard_control", keyboard, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
