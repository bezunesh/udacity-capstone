#!/bin/bash

aws cloudformation create-stack \
  --region us-east-1 \
  --stack-name my-eks-vpc-stack \
  --template-url https://s3.us-west-2.amazonaws.com/amazon-eks/cloudformation/2020-10-29/amazon-eks-vpc-private-subnets.yaml


aws iam create-role \
  --role-name myAmazonEKSClusterRole \
  --assume-role-policy-document file://"cluster-role-trust-policy.json"

aws iam attach-role-policy \
  --policy-arn arn:aws:iam::aws:policy/AmazonEKSClusterPolicy \
  --role-name myAmazonEKSClusterRole

aws eks update-kubeconfig \
  --region us-east-1 \
  --name my-cluster \
  --role-arn arn:aws:iam::345937404388:user/bezu


aws eks update-kubeconfig --name my-cluster --region us-east-1
$ aws eks update-kubeconfig --name my-cluster --region us-east-1 --role-arn arn:aws:iam::345937404388:user/bezu
kubectl get svc

eksctl create cluster \
--name my-cluster-1 \
--region us-east-1 \
--zones us-east-1a,us-east-1b \
--with-oidc \
--ssh-access \
--ssh-public-key  \ 
--managed

debugging
eksctl utils describe-stacks --region=us-east-1 --cluster=my-cluster-1'

To enable coudwatch logging
eksctl utils update-cluster-logging --enable-types={SPECIFY-YOUR-LOG-TYPES-HERE (e.g. all)} --region=us-east-1 --cluster=my-cluster-1'