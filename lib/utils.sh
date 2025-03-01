#!/bin/bash

# Catppuccin Macchiato colors
BLUE="$(tput setaf 4)"      # blue (#8aadf4)
RED="$(tput setaf 1)"       # red (#f38ba8)
MAGENTA="$(tput setaf 5)"   # magenta (#f5bde6)
CYAN="$(tput setaf 6)"      # cyan (#8bd5ca)
WHITE="$(tput setaf 7)"     # white (#b8c0e0)
BLACK="$(tput setaf 0)"     # black (#414559)
BOLD="$(tput bold)"
BG_RED="$(tput setab 1)"    # background red (#f38ba8)
BG_BLUE="$(tput setab 4)"   # background blue (#8aadf4)
BG_WHITE="$(tput setab 7)"  # background white (#b8c0e0)
RESET="$(tput sgr0)"

# Function to print formatted event messages
print_event() {
    local prefix=${2:-"EVENT"}
    echo -e "${BG_RED}${BLACK}${BOLD}[$prefix]${RESET}${BG_WHITE}${BLACK}${BOLD} $1${RESET}"
}

# Function to print warnings
warning() {
    tput setaf 1
    echo "/!\\ $1 /!\\"
    tput sgr0
}

# Function to print headers
header() {
    echo -e "\n${UNDERLINE}${CYAN}$1${RESET}\n"
}

# Function to check if command exists
command_exists() {
    command -v "$@" &> /dev/null
}
