data "aws_region" "current" {}

data "aws_iam_role" "ecs_task_execution" {
  name = "ecsTaskExecutionRole"
}

data "aws_route_table" "app" {
  subnet_id = var.app_subnet_ids[0]
}
