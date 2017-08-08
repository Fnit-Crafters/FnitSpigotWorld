USERNAME='taikifnit'
SERVICE='spigot-1.12.jar'
SCNAME='spigot'
SPI_PATH='/home/taikifnit/spigotv1'
 
cd $SPI_PATH
 
ME=`whoami`
 
if [ $ME == $USERNAME ] ; then
  if pgrep -u $USERNAME -f $SERVICE > /dev/null
    then
      echo "Stopping $SERVICE"
      screen -p 0 -S $SCNAME -X eval 'stuff "say SERVER SHUTTING DOWN IN 10 SECONDS. Saving map..."\015'
      screen -p 0 -S $SCNAME -X eval 'stuff "save-all"\015'
      sleep 10
      screen -p 0 -S $SCNAME -X eval 'stuff "stop"\015'
      sleep 10
      echo "Stopped minecraftserver"
    else
      echo "$SERVICE was not runnning."
  fi
else
  echo "Please run the minecraft user."
fi
