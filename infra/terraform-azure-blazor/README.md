# Terraform Azure Blazor Project

This project contains Terraform configurations to deploy an Azure infrastructure for a Blazor application. The infrastructure includes an Azure App Service, a Storage Account, and an Azure SQL Database.

## Project Structure

- **main.tf**: The main configuration file that defines the resources needed for the Azure infrastructure and includes module calls.
- **variables.tf**: Defines the input variables for the Terraform configuration, allowing customization of resource names, locations, and sizes.
- **outputs.tf**: Specifies the output values that Terraform will return after the infrastructure is created, such as URLs and connection strings.
- **provider.tf**: Configures the Azure provider, including authentication details and the Azure region for resource deployment.
- **modules/**: Contains submodules for specific resources:
  - **app_service/**: Contains configurations for the Azure App Service.
  - **storage_account/**: Contains configurations for the Azure Storage Account.
  - **sql_database/**: Contains configurations for the Azure SQL Database.

## Getting Started

1. **Prerequisites**:
   - Install Terraform.
   - Set up an Azure account and obtain the necessary credentials.

2. **Configuration**:
   - Update the `variables.tf` file with your desired resource names, locations, and sizes.

3. **Initialize Terraform**:
   Run the following command to initialize the Terraform configuration:
   ```
   terraform init
   ```

4. **Plan the Deployment**:
   Generate an execution plan with:
   ```
   terraform plan
   ```

5. **Apply the Configuration**:
   Deploy the infrastructure with:
   ```
   terraform apply
   ```

6. **Outputs**:
   After deployment, check the output values for important information such as service URLs and connection strings.

## Modules

### App Service Module
- Located in `modules/app_service/`
- Defines the Azure App Service and its configuration.

### Storage Account Module
- Located in `modules/storage_account/`
- Defines the Azure Storage Account and its configuration.

### SQL Database Module
- Located in `modules/sql_database/`
- Defines the Azure SQL Database and its configuration.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.