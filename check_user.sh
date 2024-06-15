#!/bin/bash

# Check if a username was provided as an argument
if [ -z "$1" ]; then
  echo "No username has been provided to check if it's on the system."
  echo "Please type a username after running the script. For example:"
  echo "./check_user.sh samcoates"
  exit 1
fi

# User to check
USER_TO_CHECK="$1"

# Check if the user exists in /etc/passwd
if grep -q "^$USER_TO_CHECK:" /etc/passwd; then
  echo "User $USER_TO_CHECK exists on this system."
else
  echo "User $USER_TO_CHECK does not exist on this system."
fi