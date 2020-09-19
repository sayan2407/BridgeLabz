#! /usr/bin/bash  

#declare Associative Array
declare -A dice
for (( i=1;i<=6;i++ ))
do
dice+=([$i]=0)
done
echo ${dice[@]} #Initialze Associative array every element zero
#echo ${!dice[@]}
#i=3
#j=5
#dice[$i]=$(( ${dice[i]} +1 ))
#dice[$j]=$(( ${dice[j]} + 2 ))
#echo ${dice[@]}
v=1
r=0
while [ $v -gt 0 ]
do
((r++))
roll=$(( RANDOM % 6 +1 ))
echo "$r Roll is : $roll "
((dice[$roll]++))
#echo $(( ${dice[roll]} ))
#echo ${dice[@]}
if [ ${dice[$roll]} -eq 10 ]
then
break
fi
done
echo ""
for (( i=1;i<=6;i++ ))
do
echo -n "${dice[$i]} "
done
echo ""
echo "Maximum times get: $roll"
min=${dice[1]}
roll=1
for (( i=2;i<=6;i++ ))
do
if [ ${dice[$i]} -lt $min ]
then
 min=${dice[$i]}
 roll=$i
fi
done
echo "Minimum times get : $roll"
