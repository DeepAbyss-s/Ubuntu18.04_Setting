dver=$(. /etc/os-release;echo $ID$VERSION_ID)  #Ubuntu's 18.04 version check.
arch=$(dpkg -s libc6 | grep Architecture)  #Ubuntu's 18.04 64bit version check.

echo " check ubuntu version !"

if [ ${dver//.} = ubuntu1804 ];then
  echo "Version : ${dver}"
else
  echo "Sorry! For Ubuntu 18.04 LTS Version !!"  // for only ubuntu 18.04 version!!
  exit
fi

echo "    "
read -p "If you continue this process, python3.7.0 version will install. Do it? [y/n]" yn
case $yn in
  [Yy]* ) echo "  "
    echo "Start!"
    echo "    ";;
  [Nn]* ) echo "  "
    echo " thank you for use our Service!"
    exit;;
esac

# ubuntu's basic program list.
sudo apt-get install -y build-essential
sudo apt-get install -y checkinstall
sudo apt-get install -y libreadline-gplv2-dev
sudo apt-get install -y libncursesw5-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y tk-dev
sudo apt-get install -y libgdbm-dev
sudo apt-get install -y libc6-dev
sudo apt-get install -y libbz2-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y openssl
sudo apt-get install -y libffi-dev
sudo apt-get install -y python3-dev
sudo apt-get install -y python3-setuptools
sudo apt-get install -y wget
wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz  # download python3.7.0
tar xvf Python-3.7.0.tar.xz
cd Python-3.7.0
./configure
sudo make altinstall
python3.7 --version  # python version check

echo "Finish for python3" &&  #  python3 install basic step is finish

sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.7 3 &&
sudo update-alternatives --config python

echo "!-! attention !-! check python's version !!" &&
python --version  #  check python version ( python 3.7.0 is correct install Version)

echo " "
echo "pip install"
sudo apt-get install python3-pip -y  # python3's pip install

echo "  "

read -p "System will reboot. restart now? [y/n] " yn
case $yn in
  [Yy]* ) echo " System will restart ! "
    sudo reboot;;
  [Nn]* ) echo " Proceed your work."
    exit;;
esac
