sudo apt-get update
do-release-upgrade

sudo apt-get install -y python-dev python-pip
sudo apt-get install -y build-essential
sudo apt-get install -y python-setuptools
sudo apt-get install -y libhdf5-serial-dev netcdf-bin libnetcdf-dev
sudo apt-get install -y libc6

echo 'Manually installing pip...'
wget https://pypi.python.org/packages/11/b6/abcb525026a4be042b486df43905d6893fb04f05aac21c32c638e939e447/pip-9.0.1.tar.gz#md5=35f01da33009719497f01a4ba69d63c9
tar -xzvf pip-9.0.1.tar.gz
cd pip-9.0.1
sudo python setup.py install
cd ~
echo 'Done installing pip 9.0.1'

echo 'Installing multiple python packages'
pip install jupyter
pip install ipython
pip install pandas
pip install numpy
pip --no-cache-dir install scipy
pip install scikit-learn
pip install tensorflow
pip install keras