#!/bin/bash

#### Build script ####

# Taking user input

echo "Enter name of package : "
read pname
echo "Enter package version : "
read pver


mkdir -p $pname$pver/DEBIAN

# Creating Control file

touch $pname$pver/DEBIAN/control

cat << EOF > $pname$pver/DEBIAN/control
Package: $pname
Version: $pver
Section: custom
Priority: optional
Architecture: all
Essential: no
Installed-Size: 1024
Maintainer: maintainer
Description: description
EOF

# Creating postrm

touch $pname$pver/DEBIAN/postrm

cat << EOF >> $pname$pver/DEBIAN/postrm
rm -rf /usr/share/$pname
rm /usr/local/bin/$pname
EOF

# Program Folder

mkdir -p $pname$pver/usr/share/$pname

# Adding Main Program

mkdir -p $pname$pver/usr/local/bin
cp main.sh $pname
chmod +x $pname
mv $pname $pname$pver/usr/local/bin

# Setting permissions

chmod 755 $pname$pver/DEBIAN/postrm

# Building it

dpkg-deb --build $pname$pver