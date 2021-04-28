# ubuntu's basic program list.
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev
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

# 도커설치진행
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
