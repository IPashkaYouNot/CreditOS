read first_num
read second_num

rez=$(echo "scale=3; $first_num/$second_num" | bc)

echo $rez
