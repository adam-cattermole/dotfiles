trash() {
    mv $@ ~/.Trash
}

empty_trash() {
    rm -rf ~/.Trash/*
}
