

echo -n "Enter the number to check: "
read num

oldnum=$num
newnum=0

while (( $oldnum>0 ))
do
	(( i=$oldnum%10 ))
	(( newnum=$newnum*10+$i ))
	(( oldnum=$oldnum/10 ))
done

if (( $newnum==$num ))
then echo "It is a palandrome number"
else echo "It is not a palandrome number"
fi

