package com.example.mcplugincursor;

import org.bukkit.event.EventHandler;
import org.bukkit.event.Listener;
import org.bukkit.event.player.PlayerJoinEvent;
import org.bukkit.plugin.java.JavaPlugin;

public class MinecraftPluginCursor extends JavaPlugin implements Listener {

    @Override
    public void onEnable() {
        getLogger().info("MinecraftPluginCursor has been enabled!");
        getServer().getPluginManager().registerEvents(this, this);
    }

    @Override
    public void onDisable() {
        getLogger().info("MinecraftPluginCursor has been disabled!");
    }

    @EventHandler
    public void onPlayerJoin(PlayerJoinEvent event) {
        event.getPlayer().sendMessage("§6Welcome to the server! Hello World!");
    }
} 