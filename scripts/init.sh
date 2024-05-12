#!/bin/sh

install_package() {
  package_name="$1"
  install_command="$2"
  
  echo "Installing $package_name..."
  if eval "$install_command"; then
    echo "$package_name installed successfully."
  else
    echo "Failed to install $package_name."
    exit 1
  fi
}


install_package "build-essential" "sudo apt-get install -y build-essential"
install_package "pip" "pip install --upgrade pip"
install_package "diagrams" "pip install diagrams"

echo "Setup completed successfully."

exec /bin/bash