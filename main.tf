# Terraform provider to be used

terraform {
  required_providers {
        

    }
  }


# Authentication method for the provider to be used in terraform
  provider "" {
    email = var.auth_email
    api_key =  var.auth_key
  }

# Authentication variable i.e email and auth key

# These values are taken from secret.tfvars for security purposes while tracking changes and pushing it to github

  variable "auth_email" {
    description = "Email authentication for auth"
    type        = string
    sensitive   = true
  }

  variable "auth_key" {
    description = "Key for auth"
    type        = string
    sensitive   = true
  }  

# You can specify the modules here

module "" {
    source                     = "path location"
    providers = {
        
    }
    }

# initliaze terraform after adding new module into the project