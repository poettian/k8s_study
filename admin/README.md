## 说明

注意开启翻墙软件为增强模式后再执行。

#### master.sh
注意替换 `--apiserver-advertise-address=` 为master节点的真实IP。

#### network.sh
修改文件里的“net-conf.json”字段，把 Network 改成刚才 kubeadm 的参数 --pod-network-cidr 设置的地址段。

#### worker.sh
修改“master node”IP和token

## 安装
#### master node
1. prepare.sh
2. admin.sh
3. master.sh
4. network.sh

#### worker node
1. prepare.sh
2. admin.sh
3. worker.sh