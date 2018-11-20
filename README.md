## 1. Bring up an instance on any cloud
In my case, I use t2.micro on AWS.
Make sure the security group is configured to allow incoming connection to port `28388`

## 2. SSH into the instance
## 3. Install Docker and Docker Compose
Simply copy and paste all the following lines into your terminal.
```sh
sudo apt update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install docker-ce
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
## 4. Clone this repo
```sh
git clone https://github.com/litaxc/shadowsocks-server-setup.git
```
## 5. Bring up the SS server
```sh
cd shadowsocks-server-setup
docker-compose up -d
```
## 6. Verify the server is up, listening on port 28388
```sh
sudo lsof -nPi | grep 28388
```
