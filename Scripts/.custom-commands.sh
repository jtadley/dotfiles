#!/bin/sh

# Creates a new directory and changed current directory to inside
mkcd () {
	mkdir -p -- "$1" &&
		cd -P -- "$1"
}

# Copies a file to a directory then goes to the directory
cpcd () {
	cp "$1" "$2"  && cd "$2"
}

mvcd () {
	mv "$1" "$2"  && cd "$2"
}

# Loads coq and runs vim
coqvim () {
	eval `opam config env` &&
		vim "$1"
}

hdmion () {
	xrandr --output HDMI2 --auto
}

xrandron () {
	xrandr --output "$1" --auto
}

hdmil () {
	xrandr --output HDMI2 --auto --left-of eDP1
}

hdmir () {
	xrandr --output HDMI2 --auto --right-of eDP1
}

hdmidup () {
	xrandr --output HDMI2 --auto
}

xrandrl () {
	xrandr --output "$1" --auto --left-of eDP1
}

xrandrr () {
	xrandr --output "$1" --auto --right-of eDP1
}

hdmioff () {
	xrandr --output HDMI2 --off
}

xrandroff () {
	xrandr --output "$1" --off
}

keybindings () {
	xmodmap ~/.Xmodmap
}

rawr () {
echo '                                 .       .'
echo '                                / `.   .  \'
echo '                        .---.  <    > <    >  .---.'
echo '                        |    \  \ - ~ ~ - /  /    |'
echo '                         ~-..-~             ~-..-~'
echo '                     \~~~\.                     `./~~~/'
echo '                      \__/                        \__/'
echo '                       /                  .-    .  \'
echo '                _._ _.-    .-~ ~-.       /       }   \/~~~/'
echo '            _.- q  }~     /       }     {        ;    \__/'
echo '           { __,  /      (       /      {       /      `. ,~~|   .     .'
echo '            `^^^^=^~~-.__(      /_      |      /- _      `..-^   \\   //'
echo '                        / \   =/  ~~--~~{    ./|    ~-.     `-..__\\_//_.-^'
echo '                       {   \  +\         \  =\ (        ~ - . _ _ _..---~'
echo '                       |  | {   }         \   \_\'
echo '                      ^---.o___,^       .o___,^'
}
