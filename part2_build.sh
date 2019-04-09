sudo apt install doxygen  
sudo apt install libgtk-3-dev 
sudo apt install gsasl
sudo apt install gnutls-bin
sudo apt install libghc-gsasl-dev
sudo apt install gnutls-dev
sudo apt install sendmail
sudo apt install libboost-system-dev
sudo apt install openssl
sudo apt install libssl-dev
sudo apt install graphviz
sudo apt install windscribe-cli

git clone https://github.com/alexgryzlov/PatternsCollection
cmake -H./PatternsCollection -B./build
cd build
make
cd ../bin
# VPN
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
echo 'deb https://repo.windscribe.com/ubuntu zesty main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list
sudo apt-get update
windscribe connect

./Decorator

windscribe disconnect

