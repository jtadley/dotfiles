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

# Loads coq and runs vim
coqvim () {
	eval `opam config env` &&
		vim "$1"
}

entrlatex () {
	echo "$1" | entr -p pdflatex "$1"
}

entrpandoc () {
	echo "$1" | entr -p pandoc "$1" -t beamer -o out.pdf
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
