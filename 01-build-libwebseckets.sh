cd /usr/src/
rm -r libwebsockets/
git clone https://libwebsockets.org/repo/libwebsockets libwebsockets
cd libwebsockets
mkdir build
cd build
cmake ..
make -s
make -s install