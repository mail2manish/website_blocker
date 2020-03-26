#!/bin/bash
echo ""
echo ""
echo ""
echo "				       *****************************************************"
echo ""
echo ""
echo "							Website Blockers"
echo "						Devloped By :- Manish Prakash Jadhav"
echo "	             			      ** Use The ReadMe File for More Details **"
echo ""
echo ""
echo "				       *****************************************************"

echo "						1. ADD WEBSITES"
echo ""
echo "						2. REMOVE WEBSITES"
echo ""
echo "						3. EXIT"
echo ""
echo "						ENTER YOUR CHOICE : "

while :
do
read input
case $input in
	1)
echo "						ENTER WEBSITE :-"  
						read x;
echo "						YOUR ADDRESS IS : - $x BLOCKED" 
echo "0.0.0.0		$x" >> /etc/hosts
	;;

	2)
echo "						ENTER WEBSITE : -"
read del;
echo "						YOUR ADDRESS IS : - $del UNBLOCKED" 
sudo sed -i '/'$del'/d' /etc/hosts	
	;;
	3)
	exit;
	;;
esac
done
echo

