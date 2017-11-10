# Janos Varga Portfolio

Static site generator using [hexo](https://hexo.io/) deployed to s3 bucket

## Clone repo

```
git clone https://github.com/jonreading81/janos-varga-the-voice.git
```

## Installation

Install [nodejs](https://nodejs.org/en/download/)

```
npm install hexo-cli -g
cd janos-varga-the-voice
npm install
```

## Run the local server

```
hexo server
```

View the site at [http://localhost:4000/](http://localhost:4000/)
Make changes and updates can be seen immediately


## Generate static HTML

static html can be generated in ./public

```
hexo generate
```

## Deployment

The site is deployed using [hexo-deployer-s3](https://github.com/nt3rp/hexo-deployer-s3)

```
hexo deploy
```

This deploys the site to the bucket specified in config.yml

```
deploy:
  type: s3
  bucket: <S3 bucket>
  aws_key: <AWS id key>  // Optional, if the environment variable `AWS_ACCESS_KEY_ID` is set
  aws_secret: <AWS secret key>  // Optional, if the environment variable `AWS_SECRET_ACCESS_KEY` is set
```

Thew  environment variables can be set in ~/.bash_profile

```
export AWS_ACCESS_KEY_ID=''
export AWS_SECRET_ACCESS_KEY=''
```

## Setting up the s3 bucket

The s3 bucket is configured to host a static website
[http://docs.aws.amazon.com/AmazonS3/latest/user-guide/static-website-hosting.html](http://docs.aws.amazon.com/AmazonS3/latest/user-guide/static-website-hosting.html)
