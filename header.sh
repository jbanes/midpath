#!/bin/sh
MYPATH=$(dirname $0)
export TIMIDITY_CFG=/etc/timidity.cfg

JAVA_CMD=$MYPATH/cdc/bin/cvm

if [ ! $MIDPATH_HOME ]; then
  MIDPATH_HOME=$(pwd)
fi

# TODO: Disabling dynamic home directory until MIDPath can be updated to handle dynamic home relocation
#DIR=$HOME/.midpath
DIR=/home/retrofw/.midpath
VER=$DIR/20200917_1
if [ ! -f "$VER" ]; then
  rm -rf $DIR/conf/com
  mkdir -p $DIR
  mkdir -p $DIR/midlets
  mkdir -p $DIR/rms
  cp -a conf $DIR
#  cp dist/midpath-demos.jar $DIR/midlets/
  touch $VER 
  echo "Copy new configuration files"
fi

if [ ! -d "$DIR" ]; then
  mkdir -p $DIR
  mkdir -p $DIR/midlets
  mkdir -p $DIR/rms
  cp -a conf $DIR
#  cp dist/midpath-demos.jar $DIR/midlets/
  touch $VER
  echo "Copy new configuration files"
fi

CP=$MIDPATH_HOME/dist/midpath.jar:$DIR/conf:$MIDPATH_HOME/dist/kxml2-2.3.0.jar:$MIDPATH_HOME/dist/microbackend.jar:$MIDPATH_HOME/dist/jlayerme-cldc.jar:$MIDPATH_HOME/dist/jorbis-cldc.jar:$MIDPATH_HOME/dist/escher-cldc.jar:$MIDPATH_HOME/dist/sdljava-cldc.jar:$MIDPATH_HOME/dist/avetanabt-cldc.jar:$MIDPATH_HOME/dist/jsr172-jaxp.jar:$MIDPATH_HOME/dist/jsr172-jaxrpc.jar:$MIDPATH_HOME/dist/jsr179-location.jar:$MIDPATH_HOME/dist/jsr184-m3g.jar:$MIDPATH_HOME/dist/jsr205-messaging.jar:$MIDPATH_HOME/dist/jsr226-svg-core.jar:$MIDPATH_HOME/dist/jsr226-svg-midp2.jar:$MIDPATH_HOME/dist/jsr226-svg-awt.jar:$MIDPATH_HOME/dist/jsr239-opengles-core.jar:$MIDPATH_HOME/dist/jsr239-opengles-jgl.jar:$MIDPATH_HOME/dist/jsr239-opengles-nio.jar:$MIDPATH_HOME/dist/jgl-cldc.jar:$MIDPATH_HOME/dist/nokia.jar:$MIDPATH_HOME/dist/cldc1.1.jar

JLP=$MIDPATH_HOME/dist

