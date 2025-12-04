if [ $# -ne 3 ]; then
    echo "Uso: $0 <directorio> <-a|-b> <cadena>"
    exit 1
fi

for archivo in "$directorio"/*; do
    if [ -f "$archivo"]; then

        nombre_actual=$(basename "$archivo")

        case $option in 
            "-a")
                nuevo_nombre="${nombre_actual}${string}"
                mv "$archivo" "$directorio/$nuevo_nombre"
                ;;
            "-b")
                nuevo_nombre="${string}${nombre_actual}"
                mv "$archivo" "$directorio/$nuevo_nombre"
                ;;

            *)
                echo "Opcion no valida. Use -a o -b"
                exit 1
                ;;
                esac
                fi
                done