if [ $# -ne 1]; then
    echo "error: Ingrese un nombre de archivo/directorio"
    exit 1
fi

nombre=$1

if [ -e "$nombre"]; then
    echo "el archivo o directorio existe"

    if [ -d "$nombre"]; then
        echo "es un directorio"
    elif [ -f "$nombre"]; then
        echo "es un archivo"
    else
        echo "es de tipo otro"
    fi

else
    echo "No existe. Creado directorio '$nombre'"
    mkdir "$nombre"
    echo "Directorio creado con exito"
fi