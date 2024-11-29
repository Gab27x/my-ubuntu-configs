# My Ubuntu Configs

This repository contains a script to set up essential development tools on a new Ubuntu machine. It automates the installation of tools like Zsh, Oh My Zsh, Java, Scala, and popular build tools such as Gradle, Maven, Spring Boot CLI, and SBT.

---

## Tools Installed

### 1. Zsh and Oh My Zsh
- **Zsh**: Installed and set as the default shell.
- **Oh My Zsh**: Configured with the following plugins:
  - `zsh-autosuggestions`
  - `zsh-syntax-highlighting`

### 2. SDKMAN Tools
- **Java**:
  - 21.0.5 (Amazon)
  - 17.0.13 (Amazon)
- **Gradle**: 8.10.2
- **Maven**: 3.9.9
- **Spring Boot CLI**: 3.3.3
- **Scala**: 3.1.3
- **SBT**: 1.9.8

### 3. Development Tools
- **Git**: Version control system.
- **build-essential**: Includes `gcc`, `g++`, and `make`.

### 4. Utilities
- **Aptitude**: Advanced package manager.

---

## Usage

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Gab27x/my-ubuntu-configs.git
   cd my-ubuntu-configs
2. **Make the script executable**
    ```bash
    chmod +x setup.sh
3. **Run the script**
   ```bash
    ./setup.sh
    
   
