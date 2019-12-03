read a
read b
read c
if [ "$a" -eq "$b" ]
then
if [ "$a" -eq "$c" ]
then
echo "EQUILATERAL"
exit
else
echo "ISOSCELES"
exit
fi
fi


if [ "$a" -eq "$c" ]
then
if [ "$a" -eq "$b" ]
then
echo "EQUILATERAL"
exit
else
echo "ISOSCELES"
exit
fi
fi


if [ "$b" -eq "$c" ]
then
if [ "$a" -eq "$b" ]
then
echo "EQUILATERAL"
exit
else
echo "ISOSCELES"
exit
fi
fi


if [ "$a" -ne "$c" ]
then
if [ "$a" -eq "$b" ]
then
echo "ISOSCELES"
exit
else
echo "SCALENE"
exit
fi
fi


if [ "$a" -ne "$b" ]
then
if [ "$a" -eq "$c" ]
then
echo "ISOSCELES"
exit
else
echo "SCALENE"
exit
fi
fi



if [ "$c" -ne "$b" ]
then
if [ "$a" -eq "$c" ]
then
echo "ISOSCELES"
exit
else
echo "SCALENE"
exit
fi
fi