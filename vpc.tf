module "network" {
  source  = "app.terraform.io/mostafaahmed/network/google"
  version = "2.5.0"
  # insert required variables here
  project_id   = var.project
  network_name = "gaurav-network"
  
  subnets = [
    {
        subnet_name   = "gaurav-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
  ]

}