
echo "Welcome Flip Coin Simulation Problem"

function checkCoinFlip(){
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
}

function chckWin(){
if [ $flag -gt $lag ]; 
then
    echo " Heads win $flag"
    echo " Tails  $lag"
elif [ $lag -gt $flag ];
then
	echo " Tails win $lag"
	echo " Heads  $flag "
fi
}

checkCoinFlip 
if [ $flag -eq $lag ];
 then
 	echo "Tie Match"
 	result=$(( $flag - $lag ))
 	if [[ "$result" -eq 2 ]] || [[ "$result" -eq -2 ]] ; 
 	then
 		chckWin $flag $lag
 		break
 	else
 		checkCoinFlip	
 	fi	 
else
	chckWin $flag $lag 
fi

 

 
