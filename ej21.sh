num=(10 3 5 7 9 3 5 4)
productoria() {
    local total=1
    for n in "${num[@]}"; do
        total=$(expr $total \* $n)
    done
    echo $total
}
productoria
