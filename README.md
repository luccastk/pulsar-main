# 🚀 pulsar-main

**pulsar-main** é o repositório principal que orquestra uma suíte de microsserviços backend focados em **autenticação de usuários, envio de emails, e gestão de produtos com integração por arquivos CSV**.

---

## 🧠 Visão Geral

Esta plataforma backend foi projetada para servir aplicações modernas com uma arquitetura desacoplada, escalável e orientada a eventos (via Kafka). Os microsserviços se integram entre si utilizando:

- Spring Cloud Gateway para roteamento
- Eureka para descoberta de serviços
- Kafka como canal assíncrono de comunicação
- Thymeleaf para templates de e-mail
- Feign para chamadas HTTP internas

---

## 🧱 Microsserviços

| Serviço          | Função                                                                                      |
|------------------|---------------------------------------------------------------------------------------------|
| `service-user`   | Autenticação e gestão de usuários com JWT. Publica eventos Kafka ao cadastrar usuários.     |
| `service-mail`   | Escuta eventos Kafka e envia e-mails via SMTP com templates Thymeleaf.                      |
| `service-file`   | Upload e parsing de arquivos CSV. Disponibiliza arquivos por HTTP. Integrado via Eureka.    |
| `service-product`| CRUD de produtos. Escuta eventos Kafka para processar arquivos via Feign e Eureka.          |
| `gateway`        | API Gateway com roteamento centralizado via Spring Cloud Gateway.                           |
| `eureka`         | Service Discovery para todos os serviços.                                                   |
| `common-kafka`   | Biblioteca Kafka reutilizável para abstração de consumers e producers.                      |

---

## ⚙️ Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- JDK 21 (caso execute serviços individualmente)
- Python 3.10+ (caso deseje rodar `service-file` fora do container)

---

## 📃 Documentação

A aplicação conta com documentação interativa gerada automaticamente via **Swagger**.  
Você pode visualizar e testar os endpoints diretamente no navegador:

```
http://localhost:8080/swagger-ui.html
```

## 🏁 Como rodar tudo localmente

1. **Clone o repositório com submodules (se aplicável):**

```bash
git clone --recurse-submodules https://github.com/sua-org/pulsar-main.git
```

2. **Arquivo `.env.example`:**

O repositório inclui um arquivo `.env.example` com todas as variáveis de ambiente necessárias para rodar o ambiente completo.  
Para começar, basta copiá-lo e preencher com seus valores locais:

```bash
cp .env.example .env
```

3. **Rodar scripts:**

A pasta scripts/ inclui comandos prontos para subir, derrubar, rebuildar, e limpar o ambiente com um clique.
