# Minecraft Plugin Starter Template

A starter template for creating Minecraft plugins compatible with PaperMC and Bukkit servers. This template provides a basic structure and example code to help you get started quickly.

## Features

- Basic plugin structure with Maven build system
- Example player join event handler
- Compatible with PaperMC and Bukkit servers
- Development environment setup with auto-reload

## Using this to start a new plugin

1. **Clone and Rename**
   ```bash
   git clone https://github.com/yourusername/mc-plugin-cursor.git your-plugin-name
   cd your-plugin-name
   ```

2. **Update Project Information**
   - Edit `pom.xml`:
     ```xml
     <groupId>com.yourdomain</groupId>
     <artifactId>your-plugin-name</artifactId>
     <version>1.0-SNAPSHOT</version>
     <name>YourPluginName</name>
     ```
   - Update `plugin.yml`:
     ```yaml
     name: YourPluginName
     version: '${project.version}'
     main: com.yourdomain.yourpluginname.YourPluginName
     api-version: '1.20'
     description: Your plugin description
     author: YourName
     ```

3. **Update Package Structure**
   - Rename the base package from `com.example.mcplugincursor` to `com.yourdomain.yourpluginname`
   - Update the main class name and package declaration
   - Move files to match your new package structure

4. **Customize Development Environment**
   - Edit `dev.sh` and update `SERVER_PLUGINS_DIR` to point to your server:
     ```bash
     SERVER_PLUGINS_DIR="/path/to/your/server/plugins"
     ```

5. **Start Development**
   - Remove the example code in `MinecraftPluginCursor.java`
   - Create your own plugin logic
   - Use the provided folder structure for organizing your code

## Requirements

- Java 17 or higher
- Maven 3.6.0 or higher
- PaperMC 1.20.4 or compatible Bukkit server

## Building the Plugin

1. Navigate to the project directory
2. Run the following command to build the plugin:
   ```bash
   mvn clean package
   ```
3. The compiled plugin will be available in the `target` directory as `your-plugin-name-1.0-SNAPSHOT.jar`

## Development Setup

1. Make sure your Minecraft server is running with development mode:
   ```bash
   java -Dpaper.development=true -jar paper.jar
   ```

2. Start the development script:
   ```bash
   ./dev.sh
   ```

3. The script will automatically rebuild and deploy your plugin when you make changes.

## Project Structure

```
your-plugin-name/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── yourdomain/
│       │           └── yourpluginname/
│       │               ├── commands/     # Command classes
│       │               ├── listeners/    # Event listener classes
│       │               ├── managers/     # Plugin manager classes
│       │               ├── models/       # Data model classes
│       │               └── utils/        # Utility classes
│       └── resources/
│           ├── plugin.yml
│           ├── config.yml
│           └── messages.yml
├── pom.xml
├── dev.sh
└── README.md
```

## Best Practices

1. **Package Structure**
   - Keep related classes together in appropriate packages
   - Use the provided folder structure for organization
   - Follow Java naming conventions

2. **Configuration**
   - Use `config.yml` for plugin settings
   - Use `messages.yml` for all text messages
   - Support color codes and placeholders

3. **Events**
   - Create separate listener classes for different event types
   - Use meaningful event handler names
   - Implement proper error handling

4. **Commands**
   - Create separate command classes
   - Implement tab completion where appropriate
   - Provide clear command usage messages

## License

This project is open source and available under the MIT License. Feel free to use this template for your own plugins. 