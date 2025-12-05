declare -a my_set

initialize_set() {
    my_set=()
}

contains() {
    local element=$1
    for item in "${my_set[@]}"; do
        if [ "$item" == "$element" ]; then
            return 0
        fi
    done
    return 1
}

add() {
    local new_element=$1
    if contains "$new_element"; then
        echo "Error: the element already exists in the set."
    else
        my_set+=("$new_element")
    fi
}

remove() {
    local element_to_remove=$1
    for i in "${!my_set[@]}"; do
        if [ "${my_set[i]}" == "$element_to_remove" ]; then
            unset 'my_set[i]'
            my_set=("${my_set[@]}")
            return
        fi
    done
    echo "Error: element not found in the set."
}

print() {
    echo "Set contents: ${my_set[@]}"
}

print_sorted(){
    print | sort
}

initialize_with(){
    if [ $# -eq 0 ]; then
        echo "Error: provide at least one element to initialize the set."
        return 1
    fi
    initialize
    for val in "$@"; do
        add "$val"
    done
}