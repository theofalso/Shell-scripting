vector1=(10 20 30 40 50 60)
vector2=(5 15 25 35 45 55)

suma_vectores() {
    local longitud=${#vector1[@]}
    local suma=0
    for (( i=0; i<longitud; i++ )); do
        suma=$(expr ${vector1[i]} + ${vector2[i]})
        echo "Suma de elemento $i: $suma"
    done
    }
suma_vectores