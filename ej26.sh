declare -a array

inicializar() {
    array=()
}

agregar_eleme() {
    if [ $# -ne 1 ]; then
        echo "Error: Se requiere un solo argumento."
        return 1
    fi
    array+=("$1")
}

eliminar_elem(){
    if [ $# -ne 1 ]; then
        echo "Error: Se requiere un solo argumento."
        return 1
    fi

    local posicion=$1
    local longitud=${#array[@]}
    if [ $posicion -lt 0 ] || [ $posicion -ge $longitud ]; then
        echo "Error: posicion invalida."
        return 1
    fi
    unset array[$posicion]
    array=("${array[@]}")

}


imprimir() {
    echo "${array[@]}"
}

inicializar_con_valores(){
    if [ $# -eq 0 ]; then
        echo "Error poner dos parametros"
        return 1
    fi

    local cantidad =$1
    local valor=$2

    array=()

    for (( i=0; i<cantidad; i++ )); do
        array+=("$valor")
    done


}