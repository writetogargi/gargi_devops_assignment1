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
# e.g: aws s3 ls --profile   awsacademy-gargi  

aws ec2 describe-volumes  --profile  mydemoprofilename   --region  us-east-1 
#e.g: aws ec2 describe-volumes  --profile  awsacademy-gargi   --region  us-east-1 


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





#### How to Doc : terraform aws provider docs

> https://www.terraform.io/    ->  Docs ->  https://registry.terraform.io/providers/hashicorp/aws/latest/docs
>
> "**<u>Resources</u>**"  and "**<u>Data Sources</u>**"







##### Sample o/p : terraform plan 

> terraform plan   
>
> Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
>   + create
>
> Terraform will perform the following actions:
>
>    aws_instance.domo-instance will be created
>   + resource "aws_instance" "domo-instance" {
>       + ami                                  = "ami-0b5eea76982371e91"
>       + arn                                  = (known after apply)
>       + associate_public_ip_address          = (known after apply)
>       + availability_zone                    = (known after apply)
>       + cpu_core_count                       = (known after apply)
>       + cpu_threads_per_core                 = (known after apply)
>       + disable_api_stop                     = (known after apply)
>       + disable_api_termination              = (known after apply)
>       + ebs_optimized                        = (known after apply)
>       + get_password_data                    = false
>       + host_id                              = (known after apply)
>       + host_resource_group_arn              = (known after apply)
>       + iam_instance_profile                 = (known after apply)
>       + id                                   = (known after apply)
>       + instance_initiated_shutdown_behavior = (known after apply)
>       + instance_state                       = (known after apply)
>       + instance_type                        = "t2.nano"
>       + ipv6_address_count                   = (known after apply)
>       + ipv6_addresses                       = (known after apply)
>       + key_name                             = (known after apply)
>       + monitoring                           = (known after apply)
>       + outpost_arn                          = (known after apply)
>       + password_data                        = (known after apply)
>       + placement_group                      = (known after apply)
>       + placement_partition_number           = (known after apply)
>       + primary_network_interface_id         = (known after apply)
>       + private_dns                          = (known after apply)
>       + private_ip                           = (known after apply)
>       + public_dns                           = (known after apply)
>       + public_ip                            = (known after apply)
>       + secondary_private_ips                = (known after apply)
>       + security_groups                      = (known after apply)
>       + source_dest_check                    = true
>       + subnet_id                            = (known after apply)
>       + tags                                 = {
>           + "Name" = "DemoInstance"
>         }
>       + tags_all                             = {
>           + "Name" = "DemoInstance"
>         }
>       + tenancy                              = (known after apply)
>       + user_data                            = (known after apply)
>       + user_data_base64                     = (known after apply)
>       + user_data_replace_on_change          = false
>       + vpc_security_group_ids               = (known after apply)
>
>       + capacity_reservation_specification {
>           + capacity_reservation_preference = (known after apply)
>
>           + capacity_reservation_target {
>               + capacity_reservation_id                 = (known after apply)
>               + capacity_reservation_resource_group_arn = (known after apply)
>             }
>             }
>
>       + ebs_block_device {
>           + delete_on_termination = (known after apply)
>           + device_name           = (known after apply)
>           + encrypted             = (known after apply)
>           + iops                  = (known after apply)
>           + kms_key_id            = (known after apply)
>           + snapshot_id           = (known after apply)
>           + tags                  = (known after apply)
>           + throughput            = (known after apply)
>           + volume_id             = (known after apply)
>           + volume_size           = (known after apply)
>           + volume_type           = (known after apply)
>         }
>
>       + enclave_options {
>           + enabled = (known after apply)
>         }
>
>       + ephemeral_block_device {
>           + device_name  = (known after apply)
>           + no_device    = (known after apply)
>           + virtual_name = (known after apply)
>         }
>
>       + maintenance_options {
>           + auto_recovery = (known after apply)
>         }
>
>       + metadata_options {
>           + http_endpoint               = (known after apply)
>           + http_put_response_hop_limit = (known after apply)
>           + http_tokens                 = (known after apply)
>           + instance_metadata_tags      = (known after apply)
>         }
>
>       + network_interface {
>           + delete_on_termination = (known after apply)
>           + device_index          = (known after apply)
>           + network_card_index    = (known after apply)
>           + network_interface_id  = (known after apply)
>         }
>
>       + private_dns_name_options {
>           + enable_resource_name_dns_a_record    = (known after apply)
>           + enable_resource_name_dns_aaaa_record = (known after apply)
>           + hostname_type                        = (known after apply)
>         }
>
>       + root_block_device {
>           + delete_on_termination = (known after apply)
>           + device_name           = (known after apply)
>           + encrypted             = (known after apply)
>           + iops                  = (known after apply)
>           + kms_key_id            = (known after apply)
>           + tags                  = (known after apply)
>           + throughput            = (known after apply)
>           + volume_id             = (known after apply)
>           + volume_size           = (known after apply)
>           + volume_type           = (known after apply)
>         }
>         }
>
> Plan: 1 to add, 0 to change, 0 to destroy.





