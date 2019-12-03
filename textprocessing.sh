#first one
echo "the number of live and dead people are respectively"
grep "live" -c dataset.csv ;grep "dead" -c dataset.csv
echo "\n"

#second
echo "the number of males of age > 50 are alive" 
 touch newfile
 grep "live" dataset.csv | awk -F, '$4>50{print $0}' > newfile
 grep "m" -c newfile
 echo "\n"

#third
grep "dead" dataset.csv |
awk 'BEGIN{FS=",";males=0;}\
{if($3="'m'" && $8="'y'"){males++;}} \ 
END{printf("the number of males having diabetes and are dead are %d\n",males)}' 
echo "\n"

#fourth
#question no4
awk 'BEGIN{FS=",";sum=0;count=0;}\
{if($8="'y'"){sum = sum + $4 ;count++;}} \
END{printf("average age associated with diabetes is %f\n",sum/count)}' dataset.csv
echo "\n"


#fifth question
grep "live" dataset.csv |
awk 'BEGIN{FS=",";count=0;}\
{if($3="'f'" && $12="'y'" && $8="'y'"){count++;}} \
END{printf("the number of women who have suffered from stroke having diabetes are alive are %d\n",count)}' 
echo "\n"

#sixth question
grep "live" dataset.csv |
awk 'BEGIN{FS=",";men=0;women=0;}\
{if($3="'f'"){women++;} \
else{men++;} }
END{if(men>women){print("number of diabetic men are more");}
else{print("number of diabetic women are more")}}'








