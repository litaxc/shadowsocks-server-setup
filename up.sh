# install docker & docker compose
sudo apt update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install -y docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# generate password
__PASSWORD__=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
__HOST_IP__=$(hostname -I)

sed -i "s/__PASSWORD__/${__PASSWORD__}/g" docker-compose.yml
sed -i "s/__PASSWORD__/${__PASSWORD__}/g; s/__HOST_IP__/${__HOST_IP__}/g" config.json

# bring up proxy
sudo docker-compose up -d
echo 'proxy is up'
