echo "<<Request for New K8S join command>>"
joinCommand=$(kubeadm token create --print-join-command)

echo $joinCommand
aws ssm put-parameter --overwrite \
    --name "/dev/AWSK8S/workerNodeJoinCommand" \
    --type "String" \
    --value "$joinCommand" \
    --region "us-east-1"

echo "<<DONE Request for New K8S join command>>"