#!/bin/bash -x
echo "Welcome Flip Coin Simulation Problem"


 choice=$((RANDOM % 2 + 1))

 if [ $choice -eq "1" ]
 then
    echo "  heads win"
 else
    echo "  tails wins"
 fi 