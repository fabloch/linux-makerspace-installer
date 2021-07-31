# Linux Makerspace Installer

Installer presque à partir de zéro une machine linux sous Ubuntu.

## Instructions d'installation

- Installer une nouvelle version d'ubuntu
- Connecter en tant que `root`
- Clonez ce dépôt, puis `cd linux-makerspace-installer`
- Type `chmod +x install.sh`
- Type `./install.sh`

## Liste des configurations nécessaires 

- Configurer Nas comme auto-mount pour que la configuration du logiciel puisse être accessible depuis un disque distant dès le début. 
- Placez le Launcher sur le bureau pour simplifier l'accès aux répertoires distants : Projets Adhérents/ Tutoriels ... 
- Définissez Symlink dans Mes Documents pour faciliter l'enregistrement des fichiers G-code (ouvrir mes documents par défaut) ou changez ce chemin à chaque soft... 
- Installer toutes les polices 


## Liste de logiciels :

#### Office

- Firefox + liste de raccourcis
- LibreOffice
- FileZilla
- Fonts
- Simple scan
- VLC

#### 3D modeling and CAD

- Freecad
- Blender
- **#TODO** default setup?

#### 3D printing and CAD

- PrusaSlicer
- Repetier
- **#TODO** machine params?

#### Design

- Inkscape
- Scribus
- Gimp

#### photography & video

- Darktable
- Handbrake
- OBS Studio

#### Lasercut

- Visicut + **#TODO** machine parameters (type lasertyfab.vcsettings.zip)

#### Electronics & IOT

- Arduino IDE

#### Coding

- Atom
- Code::Blocks IDE
