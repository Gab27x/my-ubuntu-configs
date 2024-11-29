#!/bin/bash

# Function to display steps
echo_step() {
  echo "========================================"
  echo $1
  echo "========================================"
}

# Update the system
echo_step "Updating the system..."
sudo apt update && sudo apt upgrade -y

# Install Zsh
echo_step "Installing Zsh..."
sudo apt install -y zsh
chsh -s $(which zsh) # Set Zsh as the default shell

# Install Oh My Zsh
echo_step "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add Oh My Zsh plugins
echo_step "Configuring Oh My Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Install SDKMAN
echo_step "Installing SDKMAN..."
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install Java 21.0.5-amzn and Java 17.0.13-amzn using SDKMAN
echo_step "Installing Java 21.0.5-amzn and Java 17.0.13-amzn with SDKMAN..."
sdk install java 21.0.5-amzn
sdk install java 17.0.13-amzn

# Install Gradle 8.10.2 using SDKMAN
echo_step "Installing Gradle 8.10.2 with SDKMAN..."
sdk install gradle 8.10.2

# Install Maven 3.9.9 using SDKMAN
echo_step "Installing Maven 3.9.9 with SDKMAN..."
sdk install maven 3.9.9

# Install Spring Boot CLI 3.3.3 using SDKMAN
echo_step "Installing Spring Boot CLI 3.3.3 with SDKMAN..."
sdk install springboot 3.3.3

# Install Scala 3.1.3 using SDKMAN
echo_step "Installing Scala 3.1.3 with SDKMAN..."
sdk install scala 3.1.3

# Install SBT 1.9.8 using SDKMAN
echo_step "Installing SBT 1.9.8 with SDKMAN..."
sdk install sbt 1.9.8

# Install Git
echo_step "Installing Git..."
sudo apt install -y git

# Install Python3
echo_step "Installing Python3..."
sudo apt install -y python3

# Install Aptitude
echo_step "Installing Aptitude..."
sudo apt install -y aptitude

# Install build-essential
echo_step "Installing build-essential (gcc, g++, make)..."
sudo apt install -y build-essential

# Finalize Oh My Zsh configuration
echo_step "Reloading Zsh configuration..."
source ~/.zshrc

# Finish
echo_step "Setup completed! Please restart your terminal session to apply all changes."
