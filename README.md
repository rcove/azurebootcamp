# azurebootcamp
# Azure Bootcamp Alternate Exercise 1 
Using terraform to create the virtual network (VNET)

Description 
Terraform allows you to define and create complete infrastructure deployments in Azure. You build Terraform templates in a human-readable format that create and configure Azure resources in a consistent, reproducible manner. This exercise shows you how to create a network environment with Terraform.

This exercise will guide you through the steps required to setup your own private Azure environment to which we will be deploying our virtual machines. 

Method 

Using Azure portal you will create a new VNET (Virtual dedicated environment) in a designated region. You will then create subnets within that environment. This newly created environment will be used in later exercise as new virtual machines will be provisioned into the environment. 

How 
1.	In the azure portal, Check the predefined resource group names, they should be in the format of <resource_group>-99999-01 , note and use the 01 group below. 

2.	Open Azure Shell (top of the portal screen)
 
As it is the first time used, you will need to setup shell and storage.
Select Bash 

Storage - Advanced;

Create storage in resource group, <resource_group>-99999-01

Use same region as previous, 

Sensible defaults.

You will now log in to the Azure shell, maximize the shell screen.

You will be automatically logged into the Azure environment so no account setup for terraform is required. 

3.	From the command line run the following 

git clone  https://github.com/rcove/azurebootcamp

cd azurebootcamp

vi  main.tf  - inspect the actions that are about to take place, edit the resource group definition to match the resource group in your account <resource_group>-99999-01

terraform init

terraform plan 

terraform apply 

Check in the portal that you have created a VNET with specified subnets 

If you wish, you can destroy your creation and start again run, 

terraform destroy

Return to Exercise 2 of the lab

You can use the VNET you just created or continue to use the VNET you created in the portal 

Further reading and how to deploy VMs
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-create-complete-vm
