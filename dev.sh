#!/bin/bash

# Configuration
SERVER_PLUGINS_DIR="$HOME/Path/To/Your/Server/plugins"  # Change this to your server's plugins directory
PLUGIN_NAME="mc-plugin-cursor-1.0-SNAPSHOT.jar"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting development mode...${NC}"
echo -e "${GREEN}Watching for changes in the project...${NC}"

# Function to build and deploy
build_and_deploy() {
    echo -e "${GREEN}Changes detected! Building plugin...${NC}"
    
    # Build the plugin
    if mvn clean package; then
        echo -e "${GREEN}Build successful! Deploying to server...${NC}"
        
        # Copy the plugin to the server's plugins directory
        cp "target/$PLUGIN_NAME" "$SERVER_PLUGINS_DIR/"
        
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Plugin deployed successfully!${NC}"
        else
            echo -e "${RED}Failed to deploy plugin to server directory${NC}"
        fi
    else
        echo -e "${RED}Build failed!${NC}"
    fi
}

# Initial build
build_and_deploy

# Watch for changes and rebuild
fswatch -o src/ pom.xml | while read; do
    build_and_deploy
done 