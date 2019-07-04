# TTW Static Hosting Demo

An example on how to setup static hosting on a s3 bucket. With technologies using CircleCi, Terraform and Cloufront

[https://develop-ttw-static-demo.stink.co](https://develop-ttw-static-demo.stink.co)

| Username | Password |
| -------- | -------: |
| admin    |      ttw |

## Installing

### Frontend

```shell
cd frontend
yarn install
yarm start
```

Infrastruture
Create bucket to handle terraform state
aws s3api create-bucket --bucket **BUCKET_NAME** --region eu-west-2 --create-bucket-configuration LocationConstraint=eu-west-2
add to terraform config bucket name

ADD KEYS TO CIRCLE CI
S£ CHANGE BUCKET NAME AND Resource name

SETUP SSL CERT
AND PUT IN VARIABLE
Un COMMENT in cloudfront terraform

CREATE AUTH LAMBDA USING SERVERLESS
yarn init
yarn deploy
GOT TO AWS LAMBDA and get arn number
put in varibales in enviroment
Un COMMENT in cloudfront terraform
