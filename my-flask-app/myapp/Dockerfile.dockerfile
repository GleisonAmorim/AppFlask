# Use uma imagem base do Python
FROM python:3.9

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos do projeto para o diretório de trabalho
COPY . /app

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Define a variável de ambiente para o Flask
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# Expõe a porta que o Flask usa
EXPOSE 5000

# Comando para iniciar a aplicação
CMD ["flask", "run", "--host=0.0.0.0"]
