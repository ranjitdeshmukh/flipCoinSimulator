echo "Welcome Flip Coin Simulation Problem"

 for (( i = 1; i < 100; i++ ));
  do  	
  	choice=$((RANDOM % 2 + 1))
	 if [ $choice -eq "1" ]
	 then
	 	flag=`expr $flag + 1`
	    echo "  heads win"
	 else
	 	lag=`expr $lag + 1`
	    echo "  tails wins	"
	 fi 
  done 

 echo " heads win $flag"

 echo " tails win $lag"
