# Minecraft Plugin Cursor

A simple Minecraft plugin that displays a welcome message when players join the server.

## Features

- Displays a welcome message to players when they join the server
- Compatible with PaperMC and Bukkit servers

## Requirements

- Java 17 or higher
- Maven 3.6.0 or higher
- PaperMC 1.20.4 or compatible Bukkit server

## Building the Plugin

1. Clone this repository
2. Navigate to the project directory
3. Run the following command to build the plugin:
   ```bash
   mvn clean package
   ```
4. The compiled plugin will be available in the `target` directory as `mc-plugin-cursor-1.0-SNAPSHOT.jar`

## Installation

1. Stop your Minecraft server
2. Copy the compiled plugin JAR file to your server's `plugins` directory
3. Start your Minecraft server
4. The plugin will automatically load and be ready to use

## Usage

The plugin will automatically display a welcome message to players when they join the server. No additional configuration is required.

## Project Structure

```
mc-plugin-cursor/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── example/
│       │           └── mcplugincursor/
│       │               └── MinecraftPluginCursor.java
│       └── resources/
│           └── plugin.yml
├── pom.xml
└── README.md
```

## License

This project is open source and available under the MIT License. 