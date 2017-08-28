#!/bin/bash
 
USERNAME='fnit'
SERVICE='spigot-1.12.1.jar'
SCNAME='spigot'
SPI_PATH='/home/fnit/spigotv1'
 
XMX="3333M"
XMS="100M"
 
cd $SPI_PATH
 
ME=`whoami`
 
if [ $ME == $USERNAME ] ; then
if pgrep -u $USERNAME -f $SERVICE > /dev/null
then
echo "$SERVICE is already running!"
else
echo "Starting $SERVICE..."
screen -AmdS $SCNAME java -Xmx$XMX -Xms$XMS -jar $SERVICE nogui
fi
else
echo "Please run the minecraft user."
fi

