x_lastdows() {
    NUM=${1:-1}
    SRC_DIR="$HOME/Downloads"
    DEST_DIR="$(pwd)"

    if [ ! -d "$SRC_DIR" ]; then
        echo "Source directory $SRC_DIR does not exist."
        return 1
    fi

    find "$SRC_DIR" -maxdepth 1 -type f -printf "%T@ %p\0" \
        | sort -znr \
        | head -z -n "$NUM" \
        | while IFS= read -r -d '' line; do
            filepath="${line#* }"
            cp -p -- "$filepath" "$DEST_DIR/"
        done

    echo "Copied $NUM file(s) from $SRC_DIR to $DEST_DIR"
}