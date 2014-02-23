DIR=`pwd`
cd usr/bin/
rm -rf dropline-installer &> /dev/null
ln -s consolehelper dropline-installer &> /dev/null
ln -s consolehelper pkgtool &> /dev/null
cd $DIR

