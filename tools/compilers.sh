apt install gcc-arm-linux-gnueabihf

mkdir /etc/xcompile
cd /etc/xcompile
 
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-armv4l.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-armv5l.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-armv6l.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-i586.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-i686.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-m68k.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-mips.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-mipsel.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-powerpc.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-sh4.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-sparc.tar.gz
wget https://landley.net/aboriginal/downloads/binaries/cross-compiler-x86_64.tar.gz
 
tar -zxf cross-compiler-armv4l.tar.gz
tar -zxf cross-compiler-armv5l.tar.gz
tar -zxf cross-compiler-armv6l.tar.gz
tar -zxf cross-compiler-i586.tar.gz
tar -zxf cross-compiler-i686.tar.gz
tar -zxf cross-compiler-m68k.tar.gz
tar -zxf cross-compiler-mips.tar.gz
tar -zxf cross-compiler-mipsel.tar.gz
tar -zxf cross-compiler-powerpc.tar.gz
tar -zxf cross-compiler-sh4.tar.gz
tar -zxf cross-compiler-sparc.tar.gz
tar -zxf cross-compiler-x86_64.tar.gz
 
 
rm *.tar.gz
mv cross-compiler-armv4l armv4l
mv cross-compiler-armv5l armv5l
mv cross-compiler-armv6l armv6l
mv cross-compiler-i586 i586
mv cross-compiler-i686 i686
mv cross-compiler-m68k m68k
mv cross-compiler-mips mips
mv cross-compiler-mipsel mipsel
mv cross-compiler-powerpc powerpc
mv cross-compiler-sh4 sh4
mv cross-compiler-sparc sparc
mv cross-compiler-x86_64 x86_64

echo "Adding path variables in ~/.bashrc"
echo " " >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/armv4l/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/armv5l/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/armv6l/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/i586/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/m68k/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/mips/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/mipsel/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/powerpc/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/powerpc-440fp/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/sh4/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/sparc/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/etc/xcompile/armv6l/bin" >> ~/.bashrc
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
#echo "export GOPATH=\$HOME/Documents/go" >> ~/.bashrc

#echo "Setting go path for dependecie install"
#export PATH=$PATH:/usr/local/go/bin
#export GOPATH=$HOME/Documents/go

#go get github.com/go-sql-driver/mysql
#go get github.com/mattn/go-shellwords

echo "Done! please restart shell!"
