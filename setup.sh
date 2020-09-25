@echo off

while test $# -gt 0; do
  case "$1" in
    -h|--help)
      echo "LSSS is a set of setup scripts for Linux Servers, we may even turn it into something for even every day users!"
      echo "You need to fill out the -p parameter and the -s one too!"
      echo " "
      echo "options:"
      echo "-h, --help                 show brief help"
      echo "-t, --halloftorcheredsouls what more info do you need?"
      echo "-s, --server-job           give meaning to the server!"
      echo "                           Web server (wb); Remote connection (rc);"
      echo "-p, --pkg-manager          Witch packmanager you are using, supported version bellow."
      echo "                           Apt;"
      echo "-, --"
      echo " "
      echo "Developed by Mr. Hallway, Check for updates here in the link https://github.com/MrHallway0/LSSS you probly can't click on it becuse you are probaly in TTY, sorry!"
      exit 0
      ;;
    -t, --halloftorcheredsouls)
      echo "The users on stackoverflow.com!"
      echo "You becuse you downloaded it and trusted in my trashy applications, oh probly shouldn't hav said that..."
      ;;
    -s*, --server-job)
      export SERVERJOB=`echo $1 | sed -e 's/^[^=]*=//g'`
      shift
      ;;
    -p*, --pkg-manager)
      export PKG=`echo $1 | sed -e 's/^[^=]*=//g'`
      shift
      ;;
  esac
done

if PKG "apt" then
  if SERVERJOB "wb"
    sudo apt install apache2 php mysql nodejs
  if SERVERJOB "rc"
    sudo apt install vnc ssh
  
  
  else
    echo "-s tag invalid"

else
  echo "-p tag invalid"
