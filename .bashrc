#!/bin/bash

create () {
cd ~/Documents/Github/;
sh create.sh "$1";
cd ~/Documents/Github/"$1";
}

push () {
sh ~/Documents/Github/gitPush.sh "$1";
}
