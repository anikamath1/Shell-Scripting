num=0
while true 
do 
echo "plz enter any one of the following options"
echo "enter 1 to add record"
echo "enter 2 to delete record"
echo "enter 3 to modify record"
echo "enter 4 to exit"
read num
case $num in
1)
echo "enter the info to be entered in the following format:name-rollno-marks:"
read line  
echo "$line" >> Studentinfo.txt
;;
4)
exit
;;
2)
echo "enter the name of the student whose record needs to be deleted"
read name
touch newfile
if [ `echo $?` -eq 0 ]
then
#creating a newfile which does not contain the mentioned record
grep -v "$name" Studentinfo.txt >> newfile
echo "record deleted successfully"
mv -f newfile Studentinfo.txt
fi
;;
3)
echo "enter name of the student whose record needs to be modified"
read student
grep -n "$student" Studentinfo.txt
echo "enter the line number which needs to be modified"
read lineno
echo "enter the original field value"
read original
echo "enter the new field value"
read new
sed -i ''$lineno' s/'$original'/'$new'/' Studentinfo.txt
;;
esac
done
