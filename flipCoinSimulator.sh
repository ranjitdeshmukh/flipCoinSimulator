echo "Welcome Flip Coin Simulation Problem"

 for (( i = 1; i < 100; i++ ));
  do  	
  	choice=$((RANDOM % 2 + 1))
	 if [ $choice -eq "1" ]
	 then
	 	flag=`expr $flag + 1`
	    if [[ "$flag" -eq 21 ]];
	     then
	    	break;
	    else 
	    	continue;
	    fi
	 elif [[ "$choice" -eq 2 ]]; 
	 	then
	 	 	lag=`expr $lag + 1`
	        if [[ "$lag" -eq 21 ]]; 
	        then
	        	break;
	        else
	        	continue;
	        fi
	 fi 
  done 

 echo " heads win $flag"

 echo " tails win $lag"
