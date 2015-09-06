#!/bin/bash
function create_params() {
  PACKER=$1
  SLAVES=""
  for bin in $(ls $PACKER); do 
    if [[ $bin != "packer" ]]; then
      SLAVES+="--slave /usr/bin/$bin $bin $PACKER/$bin "
    fi
  done
  echo $SLAVES
}

echo "Enter packer folder without trailing slash"
read PACKER
if [[ -d $PACKER ]]; then
  echo "Packer directory is $PACKER"
  SLAVES=$(create_params $PACKER)
  echo "Slaves are $SLAVES"
  update-alternatives --install "/usr/bin/packer" "packer" "$PACKER/packer" 1 $SLAVES 
else 
  echo "Directory $PACKER does not exist"
fi
