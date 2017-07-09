#!/bin/bash
Demo of dialogue box 
#global variables 
Menubox=${Menubox=dialog}

#function declaration - start 

funcDisplayDialogMenu () { 
	$Menubox --title "[M A I N M E N U]" --menu "Use UP/Down Arrows to Move and Enter the choice"  15 45 4 1 "Display chennai" 2 "delhi" 3 "Nothing" X "Exit" 2>choice.txt 
}

#declration stop 

#script start


funcDisplayDialogMenu 

case "`cat choice.txt`" in 
1)echo "its very hot";;
2)echo "our capital";;
3)echo "Nothing";;
X)echo "Exit";; 
esac

#script stop 

