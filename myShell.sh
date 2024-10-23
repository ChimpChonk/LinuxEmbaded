cd /home
echo $HOME
ls $USER
touch $USER/HelloWorld.txt
echo $USER/HelloWorld.txt
mkdir $USER/LinuxEmbedded
cp $USER/HelloWorld.txt $USER/LinuxEmbedded
ls $USER/LinuxEmbedded
mv $USER/LinuxEmbedded/HelloWorld.txt $USER/LinuxEmbedded/Test.txt
ls $USER/LinuxEmbedded
mv $USER/HelloWorld.txt $USER/LinuxEmbedded
ls $USER/LinuxEmbedded
rm $USER/LinuxEmbedded/Test.txt
ls $USER/LinuxEmbedded
find -name HelloWorld.txt
echo Hello,World! >> $USER/LinuxEmbedded/HelloWorld.txt
cat $USER/LinuxEmbedded/HelloWorld.txt