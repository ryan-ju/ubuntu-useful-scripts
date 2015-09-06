echo "Enter Visualvm path without trailing slash"
read VM
if [ -d "$VM" ]; then
  echo "Visualvm directory is $VM"
  sudo update-alternatives --install "/usr/bin/visualvm" "visualvm" "$VM/bin/visualvm" 1
  echo "Executables installed: Visualvm"
else
  echo "Directory $VM does not exist"
fi
