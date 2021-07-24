echo [all] > inventory


aws ec2 --profile devops describe-instances \
\
        --query 'Reservations[*].Instances[*].PublicIpAddress' \
      --filters "Name=tag:project,Values=udacity" \
      --output text >> inventory
	  
