#!/bin/bash
#IN ORDER TO RUN THIS SCRIPT IN MAC TERMINAL JUST TIPE sudo sh `script path`/compileall_lua.sh 

# Compile document
lualatex -interaction=nonstopmode main

# Compile nomenclature
makeindex main.nlo -s nomencl.ist -o main.nls

# Compile index
makeindex main

# Compile bibliography
biber main

# Compile document
lualatex main

# Compile glossary
makeglossaries main

# Compile document
lualatex main
