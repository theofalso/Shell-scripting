
select opcion in Listar DondeEstoy QuienEsta Salir; do
    
    case $opcion in
        "Listar")
            echo "Contenido del directorio actual:"
            ls
            ;;
        "DondeEstoy")
            echo "Usted está en:"
            pwd
            ;;
        "QuienEsta")
            echo "Usuarios conectados:"
            who
            ;;
        "Salir")
            echo "Exit"
            break
            ;;
        *)
            echo "Operacion no encontrada"
            ;;
    esac
done