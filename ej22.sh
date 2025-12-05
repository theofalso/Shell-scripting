arreglo=(10 293 1023 983 293 921 932)

cuentapar() {
    local contador=0
    for numero in "${arreglo[@]}"; do
        if [ $(expr $numero % 2) -eq 0 ]; then
            contador=$(expr $contador + 1)      
        fi 
    done
    echo "Cantidad de numeros pares: $contador" 
}
cuentapar