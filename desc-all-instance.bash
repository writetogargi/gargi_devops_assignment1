#!/bin/bash

profile=default
init_region=us-east-1

set +m
echo "--  $1 --"

if [ -z "$1" ]
	then
	echo "No argument supplied"
else
	profile="$1"
fi



for region in $(aws ec2 describe-regions --profile "$profile"   --region "$init_region"    --query "Regions[*].[RegionName]" --output text); do 
 echo  -e "$region \n" 
 aws ec2 describe-instances   --profile awsacademy-gargi     --region "$region"  
done; wait; set -m



