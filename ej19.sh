echo "ingrese la opcion a ejecutar"
read opcion

case $opcion in
    "03")
        ./mostrar.sh
        ;;
    "12a")
        ./ej12a.sh
        ;;
    "13a")
        ./ej13a.sh
        ;;
    esac
    done