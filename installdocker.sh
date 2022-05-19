# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker

# Credits to jarleven: https://github.com/jarleven/CUDA-OpenCV/tree/master/Docker

sudo apt update
sudo apt upgrade -y
sudo apt install -y curl vim git

git clone https://github.com/NVIDIA/object-detection-tensorrt-example.git

curl https://get.docker.com | sh && sudo systemctl --now enable docker

# Test Docker
sudo docker run hello-world



distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
      && curl -s -L https://nvidia.github.io/libnvidia-container/gpgkey | sudo apt-key add - \
      && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
      
      
sudo apt update

sudo apt install -y nvidia-docker2
sudo systemctl restart docker

# Test the NVIDIA Container Toolkit
sudo docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi

# After aquiering the NGC license key you can download and run the NGC deep learning Docker image

sudo docker run --ipc=host -it --privileged --gpus all -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw -v $HOME/test:/model ultralytics/yolov5:latest