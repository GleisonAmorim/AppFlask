# Use a imagem oficial do Python como base
FROM python:3.9-slim

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos de requisitos e instale as dependências
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copie o restante dos arquivos da aplicação
COPY . .

# Defina a variável de ambiente para o Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Exponha a porta 5000
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["flask", "run"]
