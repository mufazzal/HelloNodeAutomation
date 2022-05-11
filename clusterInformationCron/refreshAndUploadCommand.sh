echo "<<Request for New K8S join command>>"

joinCommand=$(kubeadm token create --print-join-command)

aws ssm put-parameter \
    --name "dev/AWSK8S/workerNodeJoinCommand" \
    --type "String" \
    --value $joinCommand \
    --overwrite

echo "<<DONE Request for New K8S join command>>"
