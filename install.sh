#!/usr/bin/env bash

# System upgrade
sudo apt-get update && sudo apt-get upgrade
# System
sudo apt-get install -y aptitude synaptic
sudo aptitude install -y mc ssh meld htop curl preload tmux nmap wget
sudo aptitude install -y gparted testdisk tor torsocks gnupg bleachbit
## Fonts
sudo aptitude install -y fonts-freefont-ttf
sudo aptitude install -y fonts-dejavu fonts-liberation fonts-droid
## VirtualBox
sudo aptitude install -y virtualbox-nonfree
## Archives
sudo aptitude install -y zip rar unzip unrar p7zip
sudo aptitude install -y p7zip-rar p7zip-full file-roller

################################################################################
# Programming
## Git
sudo aptitude install -y git-core
## Lua
sudo aptitude install -y lua5.2 lua5.2-doc
## Python
sudo aptitude install -y pylint
sudo aptitude install -y ipython ipython3
sudo aptitude install -y python-tk python3-tk
sudo aptitude install -y python-doc python3-doc
sudo aptitude install -y python-pip python3-pip
sudo aptitude install -y python-cffi python3-cffi
sudo aptitude install -y python-scipy python3-scipy
sudo aptitude install -y python-numpy python3-numpy
sudo aptitude install -y python-opengl python3-opengl
sudo aptitude install -y python-fixtures python3-fixtures
sudo aptitude install -y python-testtools python3-testtools
sudo aptitude install -y ipython-notebook ipython3-notebook
sudo aptitude install -y python-matplotlib python3-matplotlib
sudo aptitude install -y python-pygame python-opencv python-virtualenv
## Perl
sudo aptitude install -y perl perl-doc perl-tk cpanminus libwx-perl
sudo aptitude install -y perlbrew perl-modules perltidy perl-debug
## Ruby
sudo aptitude install -y ruby ruby-full libtcltk-ruby
## Java
sudo aptitude install -y openjdk-7-jre openjdk-7-jdk
## Lisp
sudo aptitude install -y racket racket-common racket-doc
sudo aptitude install -y sbcl sbcl-doc sbcl-source cl-clx-sbcl
## Cmake
sudo aptitude install -y cmake cmake-data cmake-qt-gui
## C++
sudo aptitude install -y llvm clang
sudo aptitude install -y g++ libsdl1.2-dev libsdl2-dev libeigen3-dev
sudo aptitude install -y liballegro5-dev libbox2d-dev libclanlib-dev
sudo aptitude install -y bison flex openmpi-bin cppcheck libpqxx-dev
sudo aptitude install -y libopencv-dev libboost-all-dev libbullet-dev
sudo aptitude install -y libsfml-dev libglm-dev libode-dev freeglut3-dev
sudo aptitude install -y libwxgtk3.0-dev libwxgtk2.8-dev libarmadillo-dev
## GCC and Assembly Lang
sudo aptitude install -y gcc gdb binutils
## GFortran, Lapack and Code::Blocks IDE
sudo aptitude install -y gfortran liblapacke
sudo aptitude install -y codeblocks codeblocks-contrib
## Make
sudo aptitude install -y make automake
## PostgreSQL
sudo aptitude install -y postgresql pgadmin3
## Emacs
sudo aptitude install -y emacs emacs24-el emacs-goodies-el emacsen-common
sudo aptitude install -y org-mode dict dict-freedict-eng-rus
## Vim
sudo aptitude install -y vim vim-nox vim-gtk vim-doc
## Tk/Tcl
sudo aptitude install -y tk tcl

################################################################################
# Science
## GeoGebra
sudo aptitude install -y geogebra
## SciLab
sudo aptitude install -y scilab scilab-doc
## Maxima
sudo aptitude install -y gnuplot-x11
sudo aptitude install -y maxima wxmaxima xmaxima
## Octave
sudo aptitude install -y octave octave-doc octave-htmldoc octave-info

################################################################################
# Graphic
sudo aptitude install -y tiled
sudo aptitude install -y inkscape
sudo aptitude install -y librecad freecad
sudo aptitude install -y scribus scribus-doc
sudo aptitude install -y blender blender-data
sudo aptitude install -y gimp gimp-data imagemagick

################################################################################
# Internet
sudo aptitude install -y filezilla
sudo aptitude install -y remmina remmina-plugin-rdp remmina-plugin-vnc
sudo aptitude install -y transmission transmission-cli transmission-gtk

################################################################################
# Office
## GoldenDict
sudo aptitude install -y goldendict fbreader
## GNUCash
sudo aptitude install -y gnucash gnucash-docs
## LibreOffice
sudo aptitude install -y libreoffice-sdbc-postgresql
sudo aptitude install -y libreoffice libreoffice-style-sifr
## LaTeX
sudo aptitude install -y aspell aspell-en aspell-ru
sudo aptitude install -y latex-beamer ghostscript texstudio
sudo aptitude install -y texlive-latex-base texlive-latex-extra
sudo aptitude install -y texlive texlive-base texlive-bibtex-extra
sudo aptitude install -y texlive-lang-cyrillic texlive-lang-english
sudo aptitude install -y texlive-generic-recommended texlive-generic-extra
sudo aptitude install -y texlive-math-extra texlive-pictures texlive-science

################################################################################
# Multimedia
sudo aptitude install -y vlc vlc-nox
sudo aptitude install -y exfalso audacious moc
sudo aptitude install -y audacity audacity-data
sudo aptitude install -y brasero brasero-cdrkit genisoimage
sudo aptitude install -y openshot openshot-doc frei0r-plugins

################################################################################
# Games
## Battle for Wesnoth
sudo aptitude install -y wesnoth wesnoth-core wesnoth-music
## OpenTTD
sudo aptitude install -y openttd openttd-opengfx openttd-openmsx openttd-opensfx

################################################################################
# System upgrade
sudo aptitude update && sudo aptitude upgrade
# Clear
sudo bleachbit
