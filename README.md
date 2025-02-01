# IDLE

IDLE is a simple and secure solution to avoid inactivity in your computer.

## Description

IDLE prevents your computer from going into sleep mode or showing inactivity by simulating user presence. This tool is particularly useful in scenarios where you need to maintain your computer's active status without constantly interacting with it.

This is a first version of something bigger

## Features

- Prevents system sleep mode
- Simulates user activity
- Lightweight and easy to use
- Secure implementation
- No administrative privileges required

## Requirements

- Dart 3.6.1 at least

## Installation

At the moment, this project is made for work in Windows but, you are free to implement your solution to work in Linux and Mac

### Install in Windows
- After clone this repository run ``dart pub get`` to install all packages
- Run ``dart compile exe -o idle.exe bin\idle.dart`` to get the executable
- Create a folder at C:\\ and copy the executable inside
- Add the created folder to path


## Usage

Run the command ``idle`` to execute the robot

``idle`` receives one parameter

|Parameter|Description|
|---------|-----------|
|-t, --time|It is the time between key is pressed, this must be an integer number|

## Security Considerations

This application is designed with security in mind and does not interfere with system security policies or settings.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the GNU terms

## Author

- [Guillermo Aragón](https://www.linkedin.com/in/aragui/)
