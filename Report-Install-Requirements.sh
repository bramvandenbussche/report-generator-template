#!/bin/bash

# Requirements for latex build
sudo apt install texlive-latex-recommended texlive-fonts-extra texlive-latex-extra pandoc p7zip-full

# Download template
cd "$(dirname "$0")"
if test -f "eisvogel.latex"; then
    echo "Template is here"
else
    wget https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v2.1.0/Eisvogel.zip
    unzip -o Eisvogel.zip eisvogel.latex
    rm Eisvogel.zip
fi

# Requirements for Plantuml
curdir=$(pwd)
sudo apt install -y graphviz default-jre
sudo mkdir -p /opt/plantuml
cd /opt/plantuml
UML=http://sourceforge.net/projects/plantuml/files/plantuml.jar/download
sudo curl -oJLO ${UML}
cd $curdir