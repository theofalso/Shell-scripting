declare -a pila

push() {
    pila+=("$1")
}

pop() { 
    local cant_elemnetos=${#pila[@]}
    if [ cant_elementos -gt 0]; then
        unset pila[cant_elementos-1]
}

lenght() {
    echo ${#pila[@]}
}

print(){
    echo "Contenido de la pila: ${pila[@]}"
}