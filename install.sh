#!/bin/bash

# datei vorher executable machen mit 
#   chmod +x filename.sh
# ausführen mit ./ filename.sh

# Ruby is bereits installiert
# Io
git clone https://github.com/stevedekorte/io.git; cd io; mkdir build; cd build; sudo apt-get install cmake -y; cmake ..; sudo make install; sudo ldconfig; cd ~/workspace;
# Prolog
sudo apt-get install swi-prolog -y;
# Scala
sudo apt-get install scala -y;
# Erlang
sudo apt-get install erlang-base -y;
# Clojure
wget http://repo1.maven.org/maven2/org/clojure/clojure/1.6.0/clojure-1.6.0.zip; unzip clojure-1.6.0.zip; rm clojure-1.6.0.zip;
# Haskell
sudo apt-get install ghc -y;

 