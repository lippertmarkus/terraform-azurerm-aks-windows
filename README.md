# terraform-aks-windows

Terraform definition for creating a Kubernetes cluster via Azure Kubernetes Service (AKS) with both a Linux and Windows node pool for testing purposes. You can then run hybrid workloads within your cluster like your CI/CD pipeline like described in my [blog post](TODO) (coming soon).

## Deployment on Azure

You need to install [Terraform](https://www.terraform.io/) as well as the [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest&tabs=azure-cli) first. Then execute the following in the directory of the cloned repository:
```bash
az login  # log in to your Azure account
terraform init  # initialize terraform
terraform apply -auto-approve  # provision infrastructure
```

In the `variables.tf` file you can find additional parameters which you can specify via `-var resource_group=aksrg` when running `terraform apply`.

## Interact with the cluster

After the deployment you get the `kube_config` as an output. Store it in `~/.kube/config` on Linux or `%userprofile%\.kube\config` on Windows to use it as default. You can then interact with the Cluster with CLIs like [`kubectl`](https://kubernetes.io/docs/tasks/tools/install-kubectl/) and [`helm`](https://helm.sh/docs/intro/install/).