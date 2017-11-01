#!/bin/bash

git config --global user.name 'Joseph Morant Navarro'
git config --global user.email 'joseph.morantnavarro@gmail.com'
git config --global color.ui true

mkdir -p $HOME/bin &&
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > $HOME/bin/repo && chmod a+x $HOME/bin/repo &&
export PATH=$PATH:$HOME/bin &&

mkdir -p $HOME/xenon &&
cp -r --parents .repo $HOME/xenon &&

cd $HOME/xenon &&
repo init -u https://github.com/joseph184/platform_manifest.git -b n --depth=1 &&
repo sync -c -n -j 4 --quiet && repo sync -c -l -j 8 --quiet &&
. build/envsetup.sh && breakfast hydrogen && brunch hydrogen