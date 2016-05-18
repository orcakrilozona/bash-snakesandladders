#!/bin/bash

# Snakes and ladders game
# Written by Yan Naing Myint ( The Cyber Wings Team )
# Contact: 09799950510
# Email: yannaing@cyberwings.asia
# Reference Picture: http://www.codewithc.com/wp-content/uploads/2014/05/snakes-and-ladders.jpg
# Or reference picture is also in repository https://github.com/orcakrilozona/bash-snakesandladders/blob/master/reference-pic.jpg

player1=1
squares=100

#Snakes
snakes(){
	if [ $player1 -eq 17 ]; then
		player1=7
		echo "Player1 is eaten by snake and is now on $player1"
	fi

	if [ $player1 -eq 54 ]; then
		player1=34
                echo "Player1 is eaten by snake and is now on $player1"
	fi
	
	if [ $player1 -eq 62 ]; then
		player1=19
                echo "Player1 is eaten by snake and is now on $player1"
	fi

	if [ $player1 -eq 64 ]; then
		player1=60
                echo "Player1 is eaten by snake and is now on $player1"
	fi

	if [ $player1 -eq 87 ]; then
		player1=24
                echo "Player1 is eaten by snake and is now on $player1"
	fi

	if [ $player1 -eq 93 ]; then
		player1=73
                echo "Player1 is eaten by snake and is now on $player1"
	fi

	if [ $player1 -eq 95 ]; then
		player1=75
                echo "Player1 is eaten by snake and is now on $player1"
	fi

	if [ $player1 -eq 99 ]; then
		player1=78
                echo "Player1 is eaten by snake and is now on $player1"
	fi
}

#Ladders
ladders(){
	if [ $player1 -eq 4 ]; then
		player1=14
		echo "Player1 got ladder and is now on $player1"
	fi

	if [ $player1 -eq 9 ]; then
		player1=31
                echo "Player1 got ladder and is now on $player1"
	fi

	if [ $player1 -eq 20 ]; then
		player1=38
                echo "Player1 got ladder and is now on $player1"
	fi

	if [ $player1 -eq 40 ]; then
		player1=59
                echo "Player1 got ladder and is now on $player1"
	fi

	if [ $player1 -eq 51 ]; then
		player1=67
                echo "Player1 got ladder and is now on $player1"
	fi

	if [ $player1 -eq 63 ]; then
		player1=81
                echo "Player1 got ladder and is now on $player1"
	fi

	if [ $player1 -eq 71 ]; then
		player1=91
                echo "Player1 got ladder and is now on $player1"
	fi
}

#Bounce back

bounce(){
	if [ $player1 -gt 100 ]; then
		excess=`echo $[$player1-100]`
		player1=`echo $[100-$excess]`
		echo "Player1 is go far over the finish point and is bounce backed to the position of $player1"
	fi
}

#Finish
finishing(){
	if [ $player1 -eq 100 ]; then
		echo Congratulation !!! Player 1 have made it to the finishing point!
	fi
}
while [ $player1 -lt 100 ]
do
	echo "Player1 position = $player1"
	read -p "Roll the dice now? (y/n) " dice
	if [ $dice = "y" ]
	then
		rolldice=$[RANDOM%6+1]
		echo "Rolling the dice results $rolldice"
		player1=`echo $[$player1+$rolldice]`
		snakes
		ladders
		bounce
		finishing
	fi

done	
