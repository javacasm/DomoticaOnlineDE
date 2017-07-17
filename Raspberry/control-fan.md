## Controlando un ventilador para refrigerar la Raspberry Pi

(Basado en el tutorial de [hackernoon](https://hackernoon.com/how-to-control-a-fan-to-cool-the-cpu-of-your-raspberrypi-3313b6e7f92c)

Se trata de controlar un ventilador desde los GPIO para refrigerar la Raspberry Pi.

Se establecerá una temperatura umbral (60º en nuestro caso) a partir de la cual se encenderá un ventilador. Inicialmente se va a usar control todo/nada, dejando para más adelante la posibilidad de usar diferentes velocidades del ventilador mediante PWM

Este es el script para encender/apagar el ventilador en función de

    #!/usr/bin/env python3
    # Author: Edoardo Paolo Scalafiotti <edoardo849@gmail.com>
    import os
    from time import sleep
    import signal
    import sys
    import RPi.GPIO as GPIO
    pin = 18 # The pin ID, edit here to change it
    maxTMP = 60 # The maximum temperature in Celsius after which we trigger the fan
    def setup():
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(pin, GPIO.OUT)
        GPIO.setwarnings(False)
        return()
    def getCPUtemperature():
        res = os.popen('vcgencmd measure_temp').readline()
        temp =(res.replace("temp=","").replace("'C\n",""))
        #print("temp is {0}".format(temp)) #Uncomment here for testing
        return temp
    def fanON():
        setPin(True)
        return()
    def fanOFF():
        setPin(False)
        return()
    def getTEMP():
        CPU_temp = float(getCPUtemperature())
        if CPU_temp>maxTMP:
            fanON()
        else:
            fanOFF()
        return()
    def setPin(mode): # A little redundant function but useful if you want to add logging
        GPIO.output(pin, mode)
        return()
    try:
        setup()
        while True:
            getTEMP()
            sleep(5) # Read the temperature every 5 sec, increase or decrease this limit if you want
    except KeyboardInterrupt: # trap a CTRL+C keyboard interrupt
        GPIO.cleanup() # resets all GPIO ports used by this program

## Servicio control fan


#! /bin/sh

### BEGIN INIT INFO
# Provides:          run-fan.py
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
### END INIT INFO

# If you want a command to always run, put it here

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    echo "Starting control-fan.py"
    /usr/local/bin/run-fan.py &
    ;;
  stop)
    echo "Stopping listen-for-shutdown.py"
    pkill -f /usr/local/bin/run-fan.py
    ;;
  *)
    echo "Usage: /etc/init.d/control-fan.sh {start|stop}"
    exit 1
    ;;
esac

exit 0




history (filtrar)


190  sudo cp run-fan.py /usr/local/bin/
191  sudo nano /etc/init.d/fan
192  sudo update-rc.d fan defaults
193  sudo chmod u+x /usr/local/bin/fan
194  sudo chmod u+x /usr/local/bin/run-fan.py
195  sudo update-rc.d fan defaults
196  sudo chmod u+x /etc/init.d/fan
197  sudo update-rc.d fan defaults
198  ls
199  mkdir on-off
200  rmdir on-off/
201  cp /etc/init.d/listen-for-shutdown.sh control-fan.sh
202  nano control-fan.sh
203  sudo cp control-fan.sh /etc/init.d/
204  chmod u+x /etc/init.d/control-fan.sh
205  sudo chmod u+x /etc/init.d/control-fan.sh
206  sudo update-rc.d control-fan
207  sudo update-rc.d control-fan.sh
208  sudo update-rc.d control-fan.sh defaults
209  more /etc/init.d/control-fan.sh
210  sudo nano /etc/init.d/control-fan.sh
213
sudo update-rc.d control-fan.sh defaults

214  sudo vi /usr/local/bin/run-fan.py


217  sudo service control-fan start
