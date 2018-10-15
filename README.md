# devops-coding-challenge




### Installation

This requires [Terraform](https://www.terraform.io/) 0.11.7  +  and [aws cli] (https://aws.amazon.com/cli/) to run.


```sh
$ cd devops-coding-challenge
$ aws configure 
$ terraform plan.
$ Terraform apply
```


### Health Check

```sh
$ chmod +x healthcheckscript
$ ./healthcheckscript "load_balancer_url_without_qoute"
```

