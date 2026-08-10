output "public_ip" {
  value = aws_instance.wordpress_instance.public_ip
}

output "wordpress_url" {
  value = "http://${aws_instance.wordpress_instance.public_ip}"
}