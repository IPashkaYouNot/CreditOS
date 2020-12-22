echo "Enter numerator:"
read first_num          # ввод числителя

echo "Enter denominator:"
read second_num         # ввод знаменателя

echo "Enter precision:"
read users_precision    # ввод точности после запятой

if [[ $second_num = 0 ]]; then    # проверка достоверности данных

  echo "The wrong denominator was typed"

else

  rez=$(echo "scale=$users_precision; $first_num/$second_num" | bc)   # использование базового калькулятора Линукса

  echo "The result of determination is: "$rez    # вывод результата деления
  
fi
