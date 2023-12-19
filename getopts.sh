while getopts ':cd' opt
do
  while (( "$#" )) ; do
    if ! [[ $1 =~ ^- ]] ; then
      username="$1"
    fi
    shift
  done
  case "$opt" in
    c) sudo useradd -m "$username"
      break ;;
    d) sudo userdel -r "$username"
      break ;;
    *) echo "Usage: $0 [-c|-d] <user>" ;;
  esac 
done
# usage 
# ./getopts.sh -c -- fred           add user 
# ./getopts.sh -d -- fred          delete user
# ./getopts.sh -h                  Usage: ./getopts.sh [-c|-d] <user>                 