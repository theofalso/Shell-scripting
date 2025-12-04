if [ $# -ne 2 ]; then
    echo "error: se debe ingresar 2 pramaetros numericos"
    exit 1
fi

num1=$1
num2=$2

echo "Suma: $(expr $num1 + $num2)"
echo "Resta: $(expr $num1 - $num2)"
echo "Multiplicacion: $(expr $num1 \* $num2)"

if [ $num1 -gt $num2 ]; then
    echo "El numero mayor es: $num1"
elif [ $num2 -gt $num1 ]; then
    echo "El numero mayor es: $num2"
else
    echo "Los numeros son iguales"
fi