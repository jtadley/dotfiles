#!/bin/bash

# Creates a new directory and changed current directory to inside
mkcd () {
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}

# Opens a new terminal in current working directory
nt () {
	pwd | urxvt &
}
