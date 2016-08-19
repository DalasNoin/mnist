sudo apt-get update

echo Y | sudo apt-get install python-pip
echo Y | sudo apt-get install python-dev

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0rc0-cp27-none-linux_x86_64.whl
sudo pip install --upgrade $TF_BINARY_URL

echo Y | sudo apt-get install python-numpy python-scipy pyyaml h5py
cd ~/.keras
sudo python changename.py

sudo pip install cython
echo Y | sudo apt-get install libhdf5-dev
sudo pip install h5py

sudo python mnist_cnn.py