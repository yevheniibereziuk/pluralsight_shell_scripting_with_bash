# printf "The script is: %s\n" "$0"
# printf "The number of arguments is: %s\n" "$#"
# printf "The aruments list is: %s\n" "$*"
# printf "The aruments as an array are: %s\n" "$@"
# fname="$1"
# shift
# lname="$1"
# printf "First: %s Last: %s\n" "$fname" "$lname"
 
while (( "$#" ))
do 
  echo "$1"
  shift
done