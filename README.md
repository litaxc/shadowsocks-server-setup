## 1. Bring up an instance on any cloud and ssh into the instance
In my case, I use t2.micro on AWS.
Make sure the security group is configured to allow incoming connection to port `28388`

## 2. Clone this repo
```sh
git clone https://github.com/litaxc/shadowsocks-server-setup.git
```
## 3. Bring up the SS server
```sh
cd shadowsocks-server-setup
sh ./up.sh
```
## 4. Verify the server is up, listening on port 28388
```sh
sudo lsof -nPi | grep 28388
```
