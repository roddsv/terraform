# Instale o AWS CLI na sua máquina Unix
sudo apt install awscli

# Crie um usuário no IAM da sua conta AWS com o nome 'bia' e conceda acesso do tipo EC2FullAccess.

# Crie uma access key para esse usuário na sua conta da AWS.

# Rode o comando abaixo e copie e cole as credenciais conforme o shell for lhe pedindo.
aws configure --profile bia

# Para a região, coloque:   'us-east-1' e para o formato, coloque: 'table'.

# Depois, digite o comando abaixo para inicializar o Terraform.
terraform init
