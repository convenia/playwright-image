# convenia/playwright

Imagem base utilizada nos SPAs para validação dos testes

Inclui configurações do node e instalação de pacotes adicionais necessários para o workflow.

## Como utilizar essa imagem

Ainda é necessário a instalação do navegador playwright na imagem base
da validação:

```dockerfile
FROM convenia/playwright

# Adiçao do projeto a imagem
ADD . /app

WORKDIR /app

RUN npx -y playwright@1.48.0 install --with-deps #Instalação do navegador configurado pelo projeto

# Rodar comandos necessários adicionais do projeto
```
