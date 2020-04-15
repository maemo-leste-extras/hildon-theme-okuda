#!/bin/sh

THEME_PACKAGE="hildon-theme-example"
THEME_NAME="My example theme"
THEME_MAINTAINER="John Doe <john@doe.com>"
THEME_DIRECTORY="Example"

echo "What should the package name be of your theme be? (Example: hildon-theme-example)"
read THEME_PACKAGE

echo "What should the theme name be? (Example: My example theme)"
read THEME_NAME

echo "Who is the maintainer of this theme? Please use NAME <email@dot.com> form. (Example: John Doe <john@doe.com>)"
read THEME_MAINTAINER

echo "What should the directory name be?"
echo "IMPORTANT: If your theme name has first letter upper case, this directory name must have first letter lower case!"
echo "IMPORTANT: If your theme name has first letter lower case, this directory name must have first letter upper case!"
echo "Otherwise you will be seeing highlighting bugs in your theme."
read THEME_DIRECTORY

echo "Setting up theme directory.."

sed "s/@THEMEDIR@/$THEME_DIRECTORY/g" configure.ac.template | sed "s/@THEMENAME@/$THEME_NAME/g" > configure.ac

sed "s/@THEME_PKG@/$THEME_PACKAGE/g" debian/control.template | sed "s/@THEME_MAINTAINER@/$THEME_MAINTAINER/g" | sed "s/@THEME_NAME@/$THEME_NAME/g" > debian/control

sed "s/@ThemeDir@/$THEME_DIRECTORY/g" debian/postinst.template > debian/postinst
chmod +x debian/postinst

sed "s/@THEME_PKG@/$THEME_PACKAGE/g" debian/rules.template > debian/rules
chmod +x debian/rules

sed "s/@ThemeDir@/$THEME_DIRECTORY/g" debian/prerm.template > debian/prerm
chmod +x debian/prerm

RFCTIME=`date -R`
sed "s/@THEME_PKG@/$THEME_PACKAGE/g" debian/changelog.template | sed "s/@THEME_MAINTAINER@/$THEME_MAINTAINER/g" | sed "s/@DATETIME@/$RFCTIME/g" > debian/changelog

echo "Done. When done replacing items, run 'mad dpkg-buildpackage -S -us -uc -d' if under MADDE!"
