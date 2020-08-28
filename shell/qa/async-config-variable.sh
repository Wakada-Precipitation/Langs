# basic
ask() {
  read -p "async config variable: " "$1"
}
VARIABLE=y
ask VARIABLE
echo $VARIABLE