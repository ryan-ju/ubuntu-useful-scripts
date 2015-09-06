echo "Enter SBT path without trailing slash"
read SBT
if [ -d "$SBT" ]; then
  echo "SBT directory is $SBT"
  sudo update-alternatives --install "/usr/bin/sbt" "sbt" "$SBT/bin/sbt" 1
  echo "Executable installed: sbt"
else
  echo "Directory $SBT does not exist"
fi
