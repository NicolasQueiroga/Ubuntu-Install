echo "@AUTHOR : Jonas Julian Jensen"
echo "                                                               "
echo "###############################################################"
echo "#                                                             #"
echo "#                     UPDATING PACKAGES                       #"
echo "#                                                             #"
echo "###############################################################"
sudo apt update 
sudo apt upgrade
echo "###############################################################"
echo "#                            done                             #"
echo "###############################################################"
echo "                                                               "
echo "                                                               "
echo "---------------------------------------------------------------"
echo "                                                               "
echo "                                                               "
echo "###############################################################"
echo "#                                                             #"
echo "#                     FIXING MODELSIM                         #"
echo "#                                                             #"
echo "###############################################################"

# Make the vco script writable
chmod u+w ~/intelFPGA_lite/*.*/modelsim_ase/vco
  
# Make a backup of the vco file
(cd ~/intelFPGA_lite/*.*/modelsim_ase/ && cp vco vco_original)
  
# Edit the vco script manually, or with these commands:
sed -i 's/linux\_rh[[:digit:]]\+/linux/g' \
    ~/intelFPGA_lite/*.*/modelsim_ase/vco
sed -i 's/MTI_VCO_MODE:-""/MTI_VCO_MODE:-"32"/g' \
    ~/intelFPGA_lite/*.*/modelsim_ase/vco
sed -i '/dir=`dirname "$arg0"`/a export LD_LIBRARY_PATH=${dir}/lib32' \
    ~/intelFPGA_lite/*.*/modelsim_ase/vco
  
# Check that the correct lines have changed
diff ~/intelFPGA_lite/*.*/modelsim_ase/vco \
    ~/intelFPGA_lite/*.*/modelsim_ase/vco_original
  
# Download the 32-bit libraries and build essentials
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install build-essential
    sudo apt install gcc-multilib g++-multilib lib32z1 \
    lib32stdc++6 lib32gcc1 libxt6:i386 libxtst6:i386 expat:i386 \
    fontconfig:i386 libfreetype6:i386 libexpat1:i386 libc6:i386 \
    libgtk-3-0:i386 libcanberra0:i386 libice6:i386 libsm6:i386 \
    libncurses5:i386 zlib1g:i386 libx11-6:i386 libxau6:i386 \
    libxdmcp6:i386 libxext6:i386 libxft2:i386 libxrender1:i386
  
# Download the old 32-bit version of libfreetype
wget download.savannah.gnu.org/releases/freetype/freetype-2.4.12.tar.bz2
tar xjf freetype-2.4.12.tar.bz2
  
# Compile libfreetype
cd freetype-2.4.12/
./configure --build=i686-pc-linux-gnu "CFLAGS=-m32" \
    "CXXFLAGS=-m32" "LDFLAGS=-m32"
make clean
make
  
cd ~/intelFPGA_lite/*.*/modelsim_ase/
mkdir lib32
cp ~/freetype-2.4.12/objs/.libs/libfreetype.so* lib32/
echo "###############################################################"
echo "#                            done                             #"
echo "###############################################################"

# Run the vsim script to start ModelSim
# cd
# ~/intelFPGA_lite/*.*/modelsim_ase/bin/vsim