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
- #### terraform init 
- #### terraform fmt
Command automatically updates configurations in the current directory for readability and consistency.

Format your configuration. Terraform will print out the names of the files it modified, if any. In this case, your configuration file was already formatted correctly, so Terraform won't return any file names.

- #### terraform validate
Validate your configuration. The example configuration provided above is valid, so Terraform will return a success message.

- #### terraform plan
Command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure. 

