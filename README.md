# Shell-Scripting

This is a repository for learning BASH and automating the entire configuration management using BASH.
We will place all the files in a serial order that gives you the approach which one to look first and next

So please practice them in the serial order.

For Authentcation, GITHUB offers PAT ( Personal Access Token )

Before you make a first push, ensure you generate the token, 

    On your account ----> profile ----> Settings -----> Developer Settings -----> Classic Token ( This is sensitive )


### Whenever you design anything, makesure that piece of automation should work for other environments as well ( prod, non-prod, qa, dev )

## Best Practices To Be Followed for a better automation :

    1) Always consider something as working if it works multiple times.
    2) Try to avoid the repetivie code and utilize functions as much as possible to avoid the code duplication.



### DRY Code vs WET Code ?

    DRY : Don't Repeat Yourself (DRY) is a software development principle, the main aim of which is to reduce repetition of code
    WET : Write Everything Twice


### Point To Be Notes When Dealing Internal DNS Record 

    1) When you create any Private DNS Record, don't prefer to delete anytime.
    2) Just update the IP
    3) If you delete the Private DNS Record and try to create again, sometimes it would take up to 24 hours.

# What we have achieved ?
    1) We have parameterized the code, so that with very minimal changes we were able to re-use the code
    2) But is our code still DRY ?



We have   NodeJS, Python , Java, AngularJS based components . . .
           (3)     (1)      (1)    (1)

# Next Week Starting From Monday/Sunday_Night, we will start with ANSIBLE ----> Jenkins / CICD ----> Terraform ----> Observability


# What's next for today ?
    * I would like to bash to created EC2 Instances & Route53 Records on AWS 


# In how many , can you connect or authenticate to aws ???

    * GUI / Console   ( Username/Userpassowrd)
    * CLI / Commands  ( You would be using tokens for authentication) : But in reality, TOEKN Generation is a pretty bad idea.
            ( Programmatic way )
    Token Generation : Access / Secret Key


# IAM : Identity and access management 
    * We create User Accounts         ( Humans )
    * Group Accounts                  ( Humans )
    * IAM Roles                       ( if one service in AWS wants to talk to other service in AWS, we use IAM Roles )

# IAM helps in achieving Least Privilege Principle ( Zero Trust Principle )

AAA  : Authentication - Authorization - Auditing

In AWS, we have more than 200+ services, but it doesn't mean one service can talk to other service.

EC2 ------->  AWS ( S3 )


IAM Role ----> B57-Admin  -----> Admin Role ----> We will add it to Ec2 
( You can only add one IAM Role Per EC2. But, you can multiple roles to the IAM Role )
( One Ec2 Instance can have n number of security groups )

Vertical Scaling -----> Adding resources to the same machine again and again on the top of it is called as veritcal scaling 
    * Vertical Scaling ( Change of Instance Type from t2.medium to t3.micro : This is always involved downtime ) 
    * how can I scale my Ec2?  Shutdown the ec2 and then change the instance type and then start the server. 
    * We always prefer to go with horizontal scaling.

* Vertical Scaling vs Horizontal Scaling

* Point to be notes : 
    All of your's EC2 Workstation should have an IAM Role with Admin Privileges

# How are we going to create Infra 

    * Using AWS CLI Commands wrappeed in a script!!!!

