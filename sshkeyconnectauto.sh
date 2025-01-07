echo "====================="
echo "= ssh auto key gen  ="
echo "====================="
echo "Développé par legrandpoulet"
echo
read -p "Nom d'utilisateur de la machine : " username
echo
read -p "@IP de la machine : " IP
touch -p ~/.ssh/id_rsa
touch -p ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa.pub
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub ${username}@${IP}
cat ~/.ssh/id_rsa.pub | ssh ${username}@${IP} "mkdir -p ~/.ssh && cat >>~/.ssh/authorized_keys" 