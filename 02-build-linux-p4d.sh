cd /usr/src/
rm -r linux-p4d/
git clone https://github.com/horchi/linux-p4d/
cd linux-p4d/
make clean all
make install DESTDIR=/usr/src/docker-p4d/docker-linux-p4d/root/ PREFIX=/usr