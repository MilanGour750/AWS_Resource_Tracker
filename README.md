# AWS_Resource_Tracker
AWS Resource Tracker is a tool designed to help users track and manage resources in their AWS account, providing a monthly report that includes details about all resources. This can be useful for monitoring usage, auditing, and cost management.

Features: 
Monthly Resource Report: Automatically generates a monthly report on AWS resources.
Tracks Multiple AWS Resources: Supports tracking for EC2 instances, S3 buckets, RDS instances, and more.
Customizable Report Format: Easily modify the report format as needed.
Automated Scheduling: Use cron jobs or similar scheduling tools to automate report generation.
Prerequisites
AWS CLI installed on a Virtual Machine (VM) or any compatible environment.
An AWS account with appropriate permissions for accessing resources.
Setup Guide
1. Install AWS CLI
Before running the AWS Resource Tracker, you need to have the AWS CLI installed. Follow these steps:

Install AWS CLI (Version 2 recommended):
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install

Verify the installation:
aws --version

2. Configure AWS CLI
Next, configure the AWS CLI with your account details. Run:

aws configure
You will be prompted to enter your AWS credentials and default region:
  AWS Access Key ID: <Your_AWS_Access_Key>
  AWS Secret Access Key: <Your_AWS_Secret_Key>
  Default region name: <Your_AWS_Region> (e.g., us-west-2)
Default output format: json

3. Clone the Repository
Clone the AWS Resource Tracker repository to your local machine or VM:

  git clone https://github.com/MilanGour750/AWS_Resource_Tracker.git
  cd AWS_Resource_Tracker

4. Run the AWS Resource Tracker Script
Ensure your script is executable and then run it:
  chmod +x AWSResourceTracker.sh
  ./AWSResourceTracker.sh
This will generate a report of your AWS resources, which you can customize to include specific resources as needed.

5. Automate the Monthly Report Generation (Optional)
To set up automated monthly tracking, use cron:
Open the crontab editor:

  crontab -e
  Add a cron job to run the script monthly (e.g., on the 1st of each month at midnight):
  0 0 1 * * /path/to/AWSResourceTracker.sh >> /path/to/report.log 2>&1
This setup will generate and log a monthly report of your AWS resources.
