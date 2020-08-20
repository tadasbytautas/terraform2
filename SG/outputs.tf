output "vpc_security_group_ids" {
    value = aws_security_group.allow_tls.id
}

output "ssh_sg" {
    value = aws_security_group.ssh.id
}