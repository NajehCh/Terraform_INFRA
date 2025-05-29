## Terraform CI Workflow

This repository includes an automated **Terraform CI pipeline** configured with **GitHub Actions**.  
The workflow automatically runs when code is pushed to the repository.

It performs the following steps:
- ⚙️ Initializes the Terraform working directory (`terraform init`)
- 🧠 Generates and displays an execution plan (`terraform plan`)
- 🚀 Applies the changes automatically (`terraform apply`)

This helps ensure that infrastructure code is syntactically correct, stable, and ready for deployment with every update.

![Designer (1)](https://github.com/user-attachments/assets/29c9ed85-50c5-4dd7-b6c2-087763e9fdc9)


