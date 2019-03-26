echo "Connecting to 192.168.1.143 ..."

sudo mount -t nfs 192.168.1.143:/home /mnt/nfs/home/
sudo mount -t nfs 192.168.1.143:/var/nfsshare /mnt/nfs/var/nfsshare

echo "Connected to 192.168.1.143 !"
