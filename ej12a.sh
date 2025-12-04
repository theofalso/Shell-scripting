echo "ingresar primer numero "
read num1
echo "ingresar segundo numero "
read num2

suma=$(expr $num1 + $num2)
restac=$(expr $num1 - $num2)
multi=$(expr $num1 \* $num2)

echo "la suma es: $suma"
echo "la resta es: $resta"
echo "la multiplicacion es: $multi"

if [ $num 1 -gt $num2 ];
then
  echo "el numero mayor es: $num1"
elif [ $num2 -gt $num1 ];
 then echo "el numero mayor es: $num2"
else
    echo "los numeros son iguales"
fi