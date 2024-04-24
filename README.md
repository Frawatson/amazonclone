Deployment of Amazon clone app using Terraform and jenkins ci-cd

Pre-requisite
aws account
basics of terraform and jenkins


Completion steps →
Step 1 → Setup Terraform and configure aws on your local machine
    a. download aws cli
    b. creat an IAM user with approprate policies and cli access
    c. on the local cli, type "aws configure" and follow the prompts.
Step 2 → Building a simple Infrastructure from code using terraform
    a. clone the project if you haven't already.
    b. change the ami in the terraform Main.tf file
    c. run the following terraform commands to build the infrastructure.
        a. terraform init
        b. terraform validate
        c. terraform plan.
        d. terraform apply
Step 3 → Setup Sonarqube and jenkins
    a. use the public ip from the ec2 and the port 9000 and 8080 for sonarqube and jenkins respectively 
    b. follow the prompts to setup
    c. setup the project in sonarqube with tokens for jenkins access 
Step 4 → ci-cd pipeline
    a. download the recommended plugins for jenkins
    b. download and configure the following plugins
        a. Docker
        b. Eclipse Temurin Installer
        c. SonarQube Scanner
        d. NodeJs Plugin
        e. owasp
        f. Prometheus metrics
    c. run the pipeline using the jenkinsfile
Step5 → Monitering via Prmotheus and grafana
    a. download and setup Prometheus
    b. add node exporter
    c. donwload and configure Grafana
    d. import custom dashboards 1860, 9964
Step 6 → Terraform Destroy
    destroy the project once it's completed

