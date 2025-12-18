project_id = "training-project-id"
region     = "us-central1"
zone       = "us-central1-a"

vpc_name    = "training-vpc"
subnet_name = "training-subnet"
subnet_cidr = "10.20.0.0/24"

vm_name       = "training-vm"
machine_type = "e2-medium"

bucket_name     = "training-secure-bucket-12345"
bucket_location = "US"

db_instance_name = "training-db"
db_version       = "POSTGRES_14"
db_tier          = "db-f1-micro"

artifact_repo_name = "training-artifact-repo"

cloud_run_service_name = "training-cloudrun"
container_image        = "us-central1-docker.pkg.dev/project/repo/app:latest"

api_gateway_name  = "training-gateway"
api_config_name   = "training-config"
openapi_spec_path = "../api/openapi.yaml"

scheduler_name = "training-scheduler"
schedule       = "*/5 * * * *"

