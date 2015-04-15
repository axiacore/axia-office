#!/usr/bin/env python
import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

GPIO.setwarnings(False)

led1 = 15

GPIO.setup(led1, GPIO.OUT)

GPIO.output(led1, 0)

time.sleep(2)

GPIO.output(led1, 1)

GPIO.cleanup()
