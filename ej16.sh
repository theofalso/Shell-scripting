if [ $# -ne 1 ]; then
    echo "Error: Debe ingresar una extensión."
    echo "Ejemplo de uso: $0 txt"
    exit 1
fi

extension=$1
archivo_salida="reporte.txt"

find . -name "*.$extension" -printf %u\n" | sort | uniq -c | awk '{print $2 " " $1}' > reporte.txt