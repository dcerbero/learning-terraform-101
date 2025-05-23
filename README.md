### Terraform 101
 - #### what is ? 
 ![alt text](/images/image.png)
 Terraform is HashiCorp's infrastructure as code tool. It lets you define resources and infrastructure in human-readable, declarative configuration files, and manages your infrastructure's lifecycle. Using Terraform has several advantages over manually managing your infrastructure:

 #### 1 - the terraform {} block 
 Contains Terraform settings, including the required providers Terraform will use to provision your infrastructure
 
 #### 2 - provider
Terraform relies on plugins called providers to interact with cloud providers, SaaS providers, and other APIs.

#### 3 - resource
Use resource blocks to define components of your infrastructure. A resource might be a physical component such as a server, or it can be a logical resource such as a Heroku application.

### comands
```
terraform init 
```
Command initializes a working directory containing Terraform configuration files. This is the first command you should run after writing a new Terraform configuration or cloning an existing configuration from version control. It is safe to run this command multiple times.
```
terraform fmt
```
Command automatically updates configurations in the current directory for readability and consistency.

Format your configuration. Terraform will print out the names of the files it modified, if any. In this case, your configuration file was already formatted correctly, so Terraform won't return any file names.

```
terraform validate
```
Validate your configuration. The example configuration provided above is valid, so Terraform will return a success message.

```
terraform plan
```
Command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. 

### Inspect your state
When you apply your configuration, Terraform writes data into a file called **terraform.tfstate.** This file contains the IDs and properties of the resources Terraform created so that it can manage or destroy those resources going forward. Your state file contains all of the data in your configuration and could also contain sensitive values in plaintext, so do not share it or check it in to source control.

==For teams or larger projects, consider storing your state remotely. Remote stage storage enables collaboration using Terraform but is beyond the scope of this tutorial.==

- #### Review updates to state
Use terraform show again to see the new values associated with this resource group.
```
terraform show
```

- #### Get the updated list of resources managed in your workspace
```
terraform state list
```

- #### Output values
When building complex infrastructure, Terraform stores hundreds or thousands of attribute values for all your resources. As a user of Terraform, you may only be interested in a few values of importance. Outputs designate which data to display
example
```
terraform state output resource_group_id
```

- #### Create resource dependencies
Terraform infers dependencies between resources based on the configuration given, so that resources are created and destroyed in the correct order. Occasionally, however, Terraform cannot infer dependencies between different parts of your infrastructure, and you will need to create an explicit dependency with the depends_on argument.
```
 depends_on = [example.rg]
```