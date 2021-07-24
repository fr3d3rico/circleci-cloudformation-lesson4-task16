echo [all] > inventory
aws ec2 --profile devops describe-instances --query "Reservations[*].Instances[*].PublicIpAddress" --output text >> inventory
git add *
git commit -m "task 18"
git push origin task18
