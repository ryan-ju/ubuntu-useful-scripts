echo "Enter Maven path without trailing slash"
read MVN
if [ -d "$MVN" ]; then
  echo "Maven directory is $MVN"
  sudo update-alternatives --install "/usr/bin/mvn" "mvn" "$MVN/bin/mvn" 1
  echo "Executables installed: mvn"
else
  echo "Directory $MVN does not exist"
fi
