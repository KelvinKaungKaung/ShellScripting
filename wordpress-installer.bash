#Created By Kevin.VisibleOne
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
else
apt-get update -y && apt-get upgrade -y
#installing Mysql Version
type mysql >/dev/null 2>&1 && echo "MySQL is already installed skipping.." || apt install mysql-server -y && mysql_secure_installation -Y
fi
