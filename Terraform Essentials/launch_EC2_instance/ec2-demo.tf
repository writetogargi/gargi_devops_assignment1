provider "aws" {
	profile = "${var.profile}"
    region = "${var.region}" 
}

# resource "aws_instance" "domo_instance" {
#     ami = "${var.ami-id}"
#     instance_type = "t2.nano"

#     tags = {
#         Name = "DemoInstance"
#     }
# }


## using map lookup
resource "aws_instance" "domo_instance" {
    ami = "${lookup(var.ami-id, var.region)}"
    instance_type = "t2.nano"

    key_name = "${var.ssh_key_name}"
    #vpc_security_group_ids = ["sg-xxxxx"]

    tags = {
        Name = "${var.tags_name}"
    }

    # provisioners
    
    provisioner "file" {
        source      = "provisioner_script.sh"
        destination = "/tmp/provisioner_script.sh"
    }

    provisioner "remote-exec" {
        inline = [
            "sudo chmod +x /tmp/script.sh",
            "sudo /tmp/script.sh"
        ]
    }

    # connection 
    connection{
        host = "${aws_instance.domo_instance.public_ip}"
        user = "ec2-user"
        private_key = "${file("${var.private_key_path}")}"
    }
}


# doc : https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance 


##  commands 🔥🔥🔥
# 1
# terraform init  
# o/p:  Terraform has been successfully initialized!

# 🔥
# 2
# terraform plan 
# terraform plan  --out plan.out 

# 🔥
# 3
# terraform apply 
# terraform apply plan.out  # it will not ask confirmation now


## o/p:
# aws_instance.domo_instance: Creating...
# aws_instance.domo_instance: Still creating... [10s elapsed]
# aws_instance.domo_instance: Still creating... [20s elapsed]
# aws_instance.domo_instance: Creation complete after 26s [id=i-072673ad2b285d199]

# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

# 🔥
# 4
# terraform destroy 

## o/p:
# Enter a value: yes
# aws_instance.domo_instance: Destroying... [id=i-072673ad2b285d199]
# aws_instance.domo_instance: Still destroying... [id=i-072673ad2b285d199, 10s elapsed]
# aws_instance.domo_instance: Still destroying... [id=i-072673ad2b285d199, 20s elapsed]
# aws_instance.domo_instance: Still destroying... [id=i-072673ad2b285d199, 30s elapsed]
# aws_instance.domo_instance: Destruction complete after 34s

# Destroy complete! Resources: 1 destroyed.
