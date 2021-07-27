#!/bin/bash

# Ping google to check for internet connection
if ! ping -c2 google.com; then 
  echo ' '
  echo 'No network connection'
  flask run
else
  echo ' '
  echo 'Connected'
fi
