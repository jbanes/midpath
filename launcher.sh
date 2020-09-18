
if [ $# -lt 2 ]; then
 echo "Usage :"
 echo "  $(basename $0) <classpath> <midlet-class> [midlet-name]" 
 echo "  $(basename $0) -jar <jar-file>"
 exit 1
fi

CLASS=org.thenesis.midpath.main.MIDletLauncherSE

if [ $1 = "-jar" ]; then
 $JAVA_CMD -Dsun.boot.library.path=${JLP} -Xbootclasspath/p:${CP}:"$2" -Xmx32M ${CLASS} -jar "$2" 
else
 $JAVA_CMD -Dsun.boot.library.path=${JLP} -Xbootclasspath/p:${CP}:"$1" -Xmx32M ${CLASS} "$2" "$3"
fi
