#!/bin/bash

###
##  backuppc.sh :: SSH backup wrapper
#

case "${SSH_ORIGINAL_COMMAND}" in
/usr/bin/rsync\ --server*)
  sudo ${SSH_ORIGINAL_COMMAND}
  ;;
*)
  echo "REJECTED: ${SSH_ORIGINAL_COMMAND}"
  exit 1
  ;;
esac