pushd ~/
git clone https://github.com/golang/go -b release-branch.go1.4 --depth=1 ~/go1.4
pushd ~/go1.4/src
./make.bash
popd
git clone https://go.googlesource.com/go -b go1.16.3 ~/goroot
pushd ~/goroot/src
./make.bash
popd
mkdir -p ~/gopath/{bin,pkg,src/github.com/Novetta}
popd
