output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.this.id
}

output "vpc_cidr" {
  description = "CIDR block of the VPC"
  value       = aws_vpc.this.cidr_block
}

output "igw_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.this.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "public_subnet_ids" {
  description = "List of all public subnet IDs (use with ASG/ALB subnets argument)"
  value       = [for s in aws_subnet.public : s.id]
}

output "public_subnets_by_key" {
  description = "Map of subnet key -> subnet id, useful if you need a specific subnet by name"
  value       = { for k, s in aws_subnet.public : k => s.id }
}
