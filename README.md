### gcp_cloud_run_app
Deploy a sample hello-world app on GCP cloud run using terraform from the cloud shell.

### 1. Set Up GCP Account and Project

- **Create GCP Account**: If you haven't already, sign up for a Google Cloud Platform account and start your free trial.
- **Create a Project**: In the GCP console, create a new project for your deployment and note the project ID.
- **Enable Billing**: Ensure billing is enabled for your project.
- **Enable APIs**: Enable Cloud Run, Container Registry, and Cloud Build APIs for your project.

### 2. Access Google Cloud Shell

- **Open Cloud Shell**: In the GCP Console, click on the Cloud Shell icon at the top right corner to open a session.
-  Cloud Shell automatically authenticates with your GCP account, so unlike doing this project from your local machine no separate service account key is needed for authentication.

### 4. Prepare Terraform Configuration

- **Write Terraform Config Files**: In Cloud Shell, create a new directory and write your Terraform configuration files (`main.tf`, `variables.tf`, `outputs.tf`). These should define your Cloud Run service and any other required resources.
- I have used a sample Hello World app image in my variables.tf file which runs a web server ( image: gcr.io/google-samples/hello-app:1.0 )

### 5. Initialize Terraform in Cloud Shell

- **Initialize Terraform**: Run `terraform init` in your Cloud Shell to initialize the Terraform workspace.

### 7. Apply Terraform Configuration

- **Apply Configuration**: Execute `terraform apply` from Cloud Shell to create your infrastructure as defined in Terraform files. Confirm the execution.
- It prompts for the project ID where you can provide the one you get when you create the project. You can always get it if you click on the project in the top right corner of the console.

### 8. Verify Deployment

- **Check Cloud Run Service**: In the GCP Console, navigate to Cloud Run to see your deployed service.
- **Test Application**: Access the provided URL to test your "Hello World" application. You can obtain the URL using terraform output as you configure it in outputs.tf. 

### 9. Clean Up Resources

- **Destroy Resources**: When finished, run `terraform destroy` to clean up resources and avoid extra charges.

- **Version Control**: You can clone a Git repository in Cloud Shell if your Terraform configurations are stored in version control.
Using Google Cloud Shell, you can effectively manage Terraform configurations and deployments without the need to install Terraform locally, leveraging the convenience and resources of GCP.
