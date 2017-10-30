#!/bin/bash
mkdir -p $CODEBUILD_SRC_DIR/bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > $CODEBUILD_SRC_DIR/bin/repo && chmod a+x $CODEBUILD_SRC_DIR/bin/repo
export PATH=$PATH:$CODEBUILD_SRC_DIR/bin

git config --global user.name 'Joseph Morant Navarro'
git config --global user.email 'joseph.morantnavarro@gmail.com'
git config --global color.ui true

mkdir -p $CODEBUILD_SRC_DIR/xenon
cp -r --parents .repo $CODEBUILD_SRC_DIR/xenon

cd $CODEBUILD_SRC_DIR/xenon
repo init -u https://github.com/joseph184/platform_manifest.git -b n --depth=1
repo sync -c -n -j 4 --quiet && repo sync -c -l -j 8 --quiet
. build/envsetup.sh && breakfast hydrogen && brunch hydrogen