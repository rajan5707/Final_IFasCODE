
echo "	>>>>: Inintialising the terraform "
terraform init
echo "	>>>>: Running the terraform Plan"
terraform plan

echo "	>>>>: Running the terraform apply in auto approve mode"
terraform apply --auto-approve

echo "-------------------------------------------------------------------------------------------------"
echo "--######### RUN THE BELOW COMMANDS MANUALLY TO SETUP SSH ###########-----"
echo "eval "$(ssh-agent -k)""
echo "ssh-agent bash"
echo "cp naveen.pem ~/.ssh/"
echo "sudo chmod 600 ~/.ssh/naveen.pem"
echo "ssh-add ~/.ssh/naveen.pem"
echo "----------------------------DONE---------------------------------------------------------------------"

echo "CHECK THE ANSIBLE PING BY FIRING THE BELOW COMMAND"
echo "ansible all -m ping -i invent.txt"
echo "if all nodes are pinging then fire this ./fireAnsible_PB.sh"

