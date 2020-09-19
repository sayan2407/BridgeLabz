#! /usr/bin/bash
#initialize of Associative Array
declare -A born92
declare -A born93
for (( i=1;i<=12;i++ ))
do
born92[$i]=0
born93[$i]=0
done
for (( i=1;i<=50;i++ ))
do
roll=$(( RANDOM % 12 + 1 ))
((born92[$roll]++))
roll=$(( RANDOM % 12 + 1 ))
((born93[$roll]++))
done
echo "Total Born in 1992 :"
for (( i=1;i<=12;i++ ))
do
echo -n "${born92[$i]} "
done
echo ""
echo "Total Born in 1993 :"
for (( i=1;i<=12;i++ ))
do
echo -n "${born93[$i]} "
done
echo ""

echo -e "Month\t\t1992\t\t1993"

for (( i=1;i<=12;i++ ))
do
case $i in
1)
m="January" ;;
2)
m="February" ;;
3)
m="March" ;;
4)
m="April" ;;
5)
m="May" ;;
6)
m="June" ;;
7)
m="July" ;;
8)
m="August" ;;
9)
m="September" ;;
10)
m="October" ;;
11)
m="November" ;;
12)
m="December" ;;
esac

echo -e "$m\t\t${born92[$i]}\t\t${born93[$i]}"
done
