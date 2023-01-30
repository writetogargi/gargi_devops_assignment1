#### https://www.terraform.io/

##### Install: 

https://developer.hashicorp.com/terraform/downloads

```bash
wget https://releases.hashicorp.com/terraform/1.3.6/terraform_1.3.6_linux_386.zip   
unzip  terraform_1.3.6_linux_386.zip

chmod -R 777 terraform

echo $PATH # check the paths and move to the global location 

sudo  mv terraform  /usr/local/bin/terraform 
```

#### Test aws cli

```bash
aws s3 ls --profile  mydemoprofilename 

aws ec2 describe-volumes  --profile  mydemoprofilename   --region  us-east-1 


aws ec2 describe-instances  --profile mydemoprofilename   --region  us-east-1 

```

​						

#### Terraform Commands

| Commands              | Usage                                                        |
| --------------------- | ------------------------------------------------------------ |
| **terraform init**    | Download any plugins required to run templates               |
| **terraform plan**    | Will show you a list of resources that will be created/deleted |
| **terraform apply**   | Applt the task to Cloud ( enter value **yes** )              |
| **terraform destroy** | Wil delete all the resources created by terraform            |
| **terraform fmt**     | Will format the file with propor indentation                 |



> Project TREE
>
> ├── data.tf
>
> ├── DevOps Project Problem Statement.md
>
> ├── locals.tf
>
> ├── **main.tf**
>
> ├── **plan.out**
>
> ├── providers.tf
>
> ├── README.md
>
> ├── Screenshot from 2023-01-26 21-53-32.png
>
> ├── template
>
> │   ├── **script.sh**
>
> │   └── server-conf.tpl
>
> └── **variables.tf**



#### How to Doc : terraform aws provider docs

> https://www.terraform.io/    ->  Docs ->  https://registry.terraform.io/providers/hashicorp/aws/latest/docs
>
> "**<u>Resources</u>**"  and "**<u>Data Sources</u>**"





# doc : https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance 


##  commands
# 🔥
# 1
# terraform init  

# 🔥
# 2
# terraform plan 
# terraform plan  --out plan.out 

# 🔥
# 3
# terraform apply 
# terraform apply plan.out  # it will not ask confirmation


# 🔥
# 4
# terraform destroy 
