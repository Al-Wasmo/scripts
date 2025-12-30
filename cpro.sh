x_cpro() {
    # Set your constant directory
    BASE_DIR="$HOME/Desktop/projects"

    # Make sure it exists
    mkdir -p "$BASE_DIR"

    # Change to the base directory
    cd "$BASE_DIR" || exit

    # Generate a directory name using the current timestamp
    DIR_NAME="index_$(date +%Y%m%d_%H%M%S)"

    # Create the new directory
    mkdir "$DIR_NAME"

    # Enter the new directory
    cd "$DIR_NAME" || exit

    # Print the current directory
    pwd
}