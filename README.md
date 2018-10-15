DevOps Coding Test
==================

# Goal

Script the creation of a service, and a healthcheck script to verify it is up and responding correctly.

# Prerequisites

You will need an AWS account. Create one if you don't own one already. You can use free-tier resources for this test.

# The Task

You are required to provision and deploy a new service in AWS. It must:

* Be publicly accessible, but *only* on port 80.
* Return the current time on `/now`.

# Mandatory Work

Fork this repository.

* Script your service using your configuration management and/or infrastructure-as-code tool of choice.
* Provision the service in your AWS account.
* Write a healthcheck script that can be run externally to periodically check if the service is up and its clock is not desynchronised by more than 1 second.
* Alter the README to contain instructions required to:
  * Provision the service.
  * Run the healthcheck script.
* Provide us IAM credentials to login to the AWS account. If you have other resources in it make sure we can only access what is related to this test.

Once done, give us access to your fork. Feel free to ask questions as you go if anything is unclear, confusing, or just plain missing.

# Extra Credit

We know time is precious, we won't mark you down for not doing the extra credits, but if you want to give them a go...

* Run the service inside a Docker container.
* Make it highly available.
* We value CloudFormation and rely on it heavily. If you already know CF, we’d love to see you use it.

# Questions

#### What scripting languages can I use?

Anyone you like. You’ll have to justify your decision. We use CloudFormation, Puppet and Python internally. Please pick something you're familiar with, as you'll need to be able to discuss it.

#### Will I have to pay for the AWS charges?

No. You are expected to use free-tier resources only and not generate any charges. Please remember to delete your resources once the review process is over so you are not charged by AWS.

#### What will you be grading me on?

Scripting skills, security, elegance, understanding of the technologies you use, documentation.

#### What will you not take into account?

Brevity. We know there are very simple ways of solving this exercise, but we need to see your skills. We will not be able to evaluate you if you provide five lines of code.

#### Will I have a chance to explain my choices?

If we proceed to a phone interview, we’ll be asking questions about why you made the choices you made. Comments in the code are also very helpful.

#### Why doesn't the test include X?

Good question. Feel free to tell us how to make the test better. Or, you know, fork it and improve it!