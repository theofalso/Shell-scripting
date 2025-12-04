for ((i=1; i<=100; i++)); do 
    c=$(expr $i \* $i)
    echo "el cuadrado de $i es $c"
done