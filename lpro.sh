x_lpro() {
    # Index argument (default: 1 = last directory)
    IDX=${1:-1}

    # Base directory to check (e.g., Downloads or projects)
    BASE_DIR="$HOME/Desktop/projects"

    # Find directories sorted by modification time
    DIR=$(ls -td "$BASE_DIR"/*/ 2>/dev/null | sed -n "${IDX}p")

    if [ -z "$DIR" ]; then
        echo "No directory found at index $IDX in $BASE_DIR"
        return 1
    fi

    # cd into it
    cd "$DIR" || return
    pwd
}