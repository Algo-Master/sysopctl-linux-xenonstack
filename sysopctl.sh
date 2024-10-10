#!/bin/bash
# sysopctl v0.1.0 - System Operation Control

# Basic Features required for a command

#   Version Information: 
if [[ "$1" == "--version" ]]; then
  echo "sysopctl v0.1.0"
  exit 0
fi

#   Help Option:
if [[ "$1" == "--help" ]]; then
  echo "Usage: sysopctl [command]"
  echo "Commands:"
  echo "  service list             List running services"
  echo "  system load              Show system load averages"
  echo "  service start <name>     Start a service"
  echo "  service stop <name>      Stop a service"
  echo "  disk usage               Check disk usage"
  echo "  process monitor          Monitor system processes"
  echo "  logs analyze             Analyze system logs"
  echo "  backup <path>            Backup system files"
  exit 0
fi

# Easy Level Features

#   List Running Services:
if [[ "$1" == "service" && "$2" == "list" ]]; then
  systemctl list-units --type=service
  exit 0
fi

#   View System Load:
if [[ "$1" == "system" && "$2" == "load" ]]; then
  uptime
  exit 0
fi

# Intermediate Level Features

#   Manage System Services (Start):
if [[ "$1" == "service" && "$2" == "start" ]]; then
  systemctl start "$3"
  echo "$3 service started."
  exit 0
fi

#   Manage System Services (Stop):
if [[ "$1" == "service" && "$2" == "stop" ]]; then
  systemctl stop "$3"
  echo "$3 service stopped."
  exit 0
fi

#   Check Disk Usage:
if [[ "$1" == "disk" && "$2" == "usage" ]]; then
  df -h
  exit 0
fi

# Advanced Level Features

#   Monitor System Processes:
if [[ "$1" == "process" && "$2" == "monitor" ]]; then
  top
  exit 0
fi

#   Analyze System Logs:
if [[ "$1" == "logs" && "$2" == "analyze" ]]; then
  journalctl -p 3 -xb
  exit 0
fi

#   Backup System Files:
if [[ "$1" == "backup" && -n "$2" ]]; then
  rsync -av "$2" /backup/dir/
  echo "Backup completed for $2."
  exit 0
fi
