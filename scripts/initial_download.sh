echo "###############################################################"
echo "#                                                             #"
echo "#                      UPDATING PACKAGES                      #"
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
echo "#                 INSTALLING INITIAL PACKAGES                 #"
echo "#                                                             #"
echo "###############################################################"
sudo apt install -y git 
sudo apt install -y curl
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get -y  install git-lfs
git lfs install
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
echo "#                      INSTALLING JAVA                        #"
echo "#                                                             #"
echo "###############################################################"
sudo apt install -y default-jdk
sudo apt install -y default-jre
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
echo "#                      INSTALLING VIM                         #"
echo "#                                                             #"
echo "###############################################################"
sudo apt search vim
sudo apt install -y vim
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
echo "#                      INSTALLING pip                         #"
echo "#                                                             #"
echo "###############################################################"
sudo apt install -y python3-pip
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
echo "#      INSTALLING NUMPY, SCIPY, SYMPY, MATPLOTLIB,            #"
echo "#      PANDAS, SEABORN, SK-LEARN, OPENCV & TENSORFLOW         #"
echo "#                                                             #"
echo "###############################################################"
pip3 install numpy
pip3 install scipy
pip3 install sympy
pip3 install matplotlib
pip3 install pandas
pip3 install seaborn
pip3 install scikit-learn
pip3 install opencv-python
pip3 install tensorflow
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
echo "#                     INSTALLING CHROME                       #"
echo "#                                                             #"
echo "###############################################################"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
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
echo "#                    INSTALLING VSCODE                        #"
echo "#                                                             #"
echo "###############################################################"
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y code
echo "###############################################################"
echo "#                            done                             #"
echo "###############################################################"