# TSuite

TSuite is a collection of tools and scripts designed to simplify various tasks and automate workflows in a user-friendly manner. This suite of tools is crafted by Tarek to enhance productivity and manageability in daily operations.

## Overview

TSuite includes various scripting functions categorized into different sections. The suite aims to streamline everyday tasks by providing simple commands and scripts that can be easily reused and customized.

## Directory Structure

- **bash/**: Contains Bash scripts for aliases, exports, and personalized configurations.
- **config/**: Configuration files for Git and other tools.
- **functions/**: A collection of reusable functions that can be sourced into your shell.
- **help/**: Documentation and helpful resources.
- **init.sh**: The main initialization script to set up your environment.
- **this/**: Placeholder for additional files and scripts not tracked by git.
- **tmp/**: Temporary files.

## Functions

### 1. `check`
**Usage**: 
```bash
check
```
A function to verify the health and status of various services and configurations.

### 2. `dockerssh`
**Usage**: 
```bash
dockerssh [container_name]
```
Allows you to easily connect to your Docker containers with a single command.

### 3. `get_git`
**Usage**: 
```bash
$(get_git) 
```
Fetches the current Git branch and displays its status.

### 4. `tload`
**Usage**: 
```bash
tload [directory]
```
Loads and sources all functions in the specified directory for easy access within a session.

### 5. `trestart`
**Usage**: 
```bash
trestart
```
Restarts the current shell session, allowing for immediate application of changes made to configuration files.

### 6. `tssh`
**Usage**: 
```bash
tssh
```
A function that manages SSH key loading and connection processes.

### 7. `tsync`
**Usage**: 
```bash
tsync
```
Syncs files across multiple hosts using secure protocols, simplifying the task of maintaining file consistency.

### 8. `ttcol`
**Usage**: 
```bash
ttcol [mode]
```
Configures the command prompt with various themes and colors for enhanced visibility and productivity.

## Getting Started

To get started with TSuite, clone the repository:

```bash
git clone https://github.com/machine-moon/tsuite.git
cd tsuite
```

Then, source the `init.sh` script in your terminal to load the functions and configurations:

```bash
source init.sh
```

## Contributing

Contributions are welcome! If you have any features or improvements in mind, feel free to fork the repository and submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Author

Developed by Tarek
