if [ $# -ne 3 ]; then
    echo "error: se debe ingresar 2 parametros numericos y un operador"
    echo "modo de uso: ./ej12c.sh num1 num2 operador"
    exit 1
    fi

op=$3
num1=$1
num2=$2

case $op in
    +)
        res=$(expr $num1 + $num2)
        echo "el resultado es $num1 + $num2 = $res"
        ;;
    -)
        res=$(expr $num1 - $num2)
        echo "el resultado es $num1 - $num2 = $res"
        ;;
    "*")
        res=$(expr $num1 \* $num2)
        echo "el resultado es $num1 * $num2 = $res"
        ;;
    
    *)
        echo "operador no valido. Use +, - o *"
        ;;
esac
