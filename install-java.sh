echo "Enter JDK path without trailing slash"
read JDK
if [ -d "$JDK" ]; then 
  echo "JDK directory is $JDK"
  sudo update-alternatives --install "/usr/bin/java" "java" "$JDK/bin/java" 1 --slave "/usr/bin/javac" "javac" "$JDK/bin/javac" --slave "/usr/bin/javaws" "javaws" "$JDK/bin/javaws" --slave "/usr/bin/jar" "jar" "$JDK/bin/jar" --slave "/usr/bin/jps" "jps" "$JDK/bin/jps" --slave "/usr/bin/jconsole" "jconsole" "$JDK/bin/jconsole" --slave "/usr/bin/javadoc" "javadoc" "$JDK/bin/javadoc" --slave "/usr/bin/jcontrol" "jcontrol" "$JDK/bin/jcontrol" --slave "/usr/bin/javah" "javah" "$JDK/bin/javah" --slave "/usr/bin/javap" "javap" "$JDK/bin/javap" --slave "/usr/bin/jstack" "jstack" "$JDK/bin/jstack" --slave "/usr/bin/jhat" "jhat" "$JDK/bin/jhat" --slave "/usr/bin/jstat" "jstat" "$JDK/bin/jstat"
  echo "Executables installed: java, javac, javaws, jar, jps, jconsole, javadoc, jcontrol, javah, javap, jstack, jhat, jstat"
else
  echo "Directory $JDK does not exist"
fi 
