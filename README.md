# jenkins-azure

## Goals

- [x] Install Docker Desktop
- [x] Configure Docker Agent (Create Ephemeral Agent behaviours)
  - [x] Create Docker image with all necessary tools for this pipeline
    - [x] azure cli
    - [x] terraform
    - [x] docker cli
- [x] Is there a GitHub build pipeline status plugin
- [x] Create custom nginx Docker container and upload to Azure container registry
- [x] Deploy custom container in K8s
- [x] Use cli to destroy storage (optional)
- [x] Add retry block to Destroy stage
- [x] Update DNS record with App IP
- [x] Add example of using an external script with `returnStdout` method
- [x] Only prompt to continue if TF changes exist
- [x] Add prereq steps, eg: Azure Service Principal (see below)
- [x] Create a multi-stage Docker image build, to reduce image size (docker push takes too long)
- [x] Update Terraform to use latest version of Azure provider
- [x] Update Jenkins Agent dockerfile with latest util versions, and push to Docker Hub
- [ ] Add improved output to all scripts, esp. az cli scripts with no current output (`Destroy-Storage.ps1`)
- [ ] Add Pester tests with junit output
- [ ] Add Helm for Kubernetes releases
- [ ] Complete this README with proper usage instructions

```powershell
# Login to your target Azure environment
az login

# Create a Service Principle named "jenkins"
# outputting the required info for future use
az ad sp create-for-rbac --name jenkins --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"

# output subscription id
az account show --query "{ subscription_id: id }"
```
