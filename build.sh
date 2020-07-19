#/bin/bash
buildah bud -v $PWD:/build/fuse-overlayfs -t fuse-overlayfs -f ./Dockerfile.static.ubuntu.remote .
cp ./fuse-overlayfs ../../test/fuse-overlayfs
chown maverick:maverick ../../test/fuse-overlayfs
chmod 777 ../../test/fuse-overlayfs