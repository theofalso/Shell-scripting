for archivo in *; do
    if [ -f "$archivo"]; then
        echo "$archivo" | tr 'a-zA-Z' 'A-Za-z'| tr -d 'aA'
    fi
done