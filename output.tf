#output "amiId-us-east-1" {
#  value = data.aws_ssm_parameter.linuxAmi.value
#}

#output "amiId-us-west-2" {
#  value = data.aws_ssm_parameter.linuxAmiOregon.value
#}


output "aws_sandbox-Public-IPs" {
  value = {
    for instance in aws_instance.aws_sandbox :
    instance.id => instance.public_ip
  }
}
output "aws_sandbox-Private-IPs" {
  value = {
    for instance in aws_instance.aws_sandbox :
    instance.id => instance.private_ip
  }
}