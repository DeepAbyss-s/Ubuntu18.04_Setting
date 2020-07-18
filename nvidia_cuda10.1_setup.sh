dver=$(. /etc/os-release;echo $ID$VERSION_ID)
arch=$(dpkg -s libc6 | grep Architecture)

echo " check ubuntu version !"

if [ ${dver//.} = ubuntu1804 ];then
  echo "Version : ${dver}"
else
  echo "Sorry! This program is For Only Ubuntu 18.04 LTS Version !!"  # for only ubuntu 18.04 version!!
  exit
fi

echo "    "
read -p "If you continue this process, Nvidia driver and Cuda 10.1 version will install. Do it? [y/n]" yn
case $yn in
  [Yy]* ) echo "  "
    echo "Start!"
    echo "    ";;
  [Nn]* ) echo "  "
    echo " thank you for use our Service!"
    exit;;
esac

echo "!! check your driver, Before install driver!!"
echo "   "
echo "   "
sudo ubuntu-drivers devices
echo "   "
read -p "Do you want to install cuda 10.1 and nvidia-driver? [y/n] " yn  #  version check
case $yn in
  [Yy]* ) release="ubuntu"$(lsb_release -sr | sed -e "s/\.//g")
  echo $release
  sudo apt install sudo gnupg
  sudo apt-key adv --fetch-keys "http://developer.download.nvidia.com/compute/cuda/repos/"$release"/x86_64/7fa2af80.pub"
  sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/'$release'/x86_64 /" > /etc/apt/sources.list.d/nvidia-cuda.list'
  sudo sh -c 'echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/'$release'/x86_64 /" > /etc/apt/sources.list.d/nvidia-machine-learning.list'
  sudo apt update
  sudo apt-get install cuda-10-1
  echo " - 버전 확인 "
  cat /usr/local/cuda/version.txt
  echo " "
  echo " please reboot your system!";;


  [Nn]* ) echo " Thank you for use our Service"
    exit;;
esac
