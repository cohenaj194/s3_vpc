# bastion setup
cat ~/Downloads/test.txt
scp ~/Downloads/test.txt ubuntu@$EIP:~
scp ../setup.sh ubuntu@$EIP:~
ssh ubuntu@$EIP
# source secrets.sh
# sudo apt update
# sudo apt install python-pip -y
# pip install awscli --upgrade --user
aws s3 ls s3://storage-bucket-nssa620

# s3 upload
aws s3 cp ./test.txt s3://storage-bucket-nssa620
aws s3 ls s3://storage-bucket-nssa620

# s3 download
aws s3 cp s3://storage-bucket-nssa620 . --recursive
scp ubuntu@$EIP:~/test.txt .
