if [ $# -ne 1]; then 
    echo "Error: Debe ingresar un nombre de usuario"
    exit 1
fi

usuario_buscado=$1

while true; do
    if who | grep -w "$usuario_buscado"; then
        exit 0
    fi
    sleep 10
    done