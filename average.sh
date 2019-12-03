numbers=0.00
read numbers
count=0.00
sum=0.00
num=0.0
for ((count=0;count<$numbers;count++))
do
read num
sum=`echo $sum + $num | bc `
done
avg=`echo $sum / $numbers | bc -l`
printf "%.3f\n" $avg
