#!/bin/bash
if bluetoothctl show | grep -q "Powered: yes"; then
  if bluetoothctl info | grep -q "Connected: yes"; then
    echo " Connected"
  else
    echo " Disconnected"
  fi
else
  echo " Bluetooth Off"
fi
