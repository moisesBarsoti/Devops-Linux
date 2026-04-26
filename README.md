# 🚀 CP2 - API REST com Spring Boot e Criação da VM (OCI)

API REST desenvolvida em Java com Spring Boot para gerenciamento de **clientes** e **produtos**, com validação de dados, persistência e deploy em ambiente real (Oracle Cloud).

---

## 📚 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Tecnologias](#-tecnologias-utilizadas)
- [Docker](#-docker)
- [API Online](#-api-online)
- [Endpoints](#-endpoints)
- [Exemplos de Requisição](#-exemplos-de-requisição)
- [Observação](#-observação)

---

## 📌 Sobre o Projeto

Esta aplicação foi desenvolvida como parte do CP2 com foco em:

- CRUD completo
- Validação de dados
- Persistência com JPA
- Deploy em VM (Oracle Cloud)
- Containerização com Docker

---

## 🛠️ Tecnologias Utilizadas

- Java 17
- Spring Boot 3.2.4
- Spring Web
- Spring Data JPA
- Bean Validation
- H2 Database (produção leve)
- Docker / Docker Compose
- Oracle Cloud (VM Ubuntu)

---

## 🐳 Docker

1º Conectar na VM
```
ssh ubuntu@137.131.182.41
```
--

2º Verifique se o container está rodando

<img width="1372" height="54" alt="image" src="https://github.com/user-attachments/assets/cbc5d8d0-9647-4c31-8fbd-fe8b5a711f82" />

```
sudo docker ps
```

Caso não esteja rodando suba a aplicação

```
sudo docker compose up -d
```

Veja os logs do container executando
```
sudo docker logs -f api-cp
```

--

Testar endpoints na VM

Health
```
curl http://localhost:8080
```
Produtos
```
curl http://localhost:8080/api/produtos
```
Clientes
```
curl http://localhost:8080/api/clientes
```
---

## 🌐 API Online

A aplicação está rodando em:

```
http://137.131.182.41:8080
```

## 🔗 Endpoints

### Produtos

| Método | Endpoint |
|------|--------|
| GET | /api/produtos |
| POST | /api/produtos |
| PUT | /api/produtos/{id} |
| DELETE | /api/produtos/{id} |

---

### Clientes

| Método | Endpoint |
|------|--------|
| GET | /api/clientes |
| POST | /api/clientes |
| PUT | /api/clientes/{id} |
| DELETE | /api/clientes/{id} |

---

### Endpoints de teste:

Produtos

```
http://137.131.182.41:8080/api/produtos
```

Clientes

```
http://137.131.182.41:8080/api/clientes
```

---

## 📥 Exemplos de Requisição

### Criar Produto

```json
{
  "nome": "Ração Premium",
  "descricao": "Ração para cães adultos",
  "preco": 89.90,
  "estoque": 50,
  "categoria": "Alimentação"
}
```

### Criar Cliente

```json
{
  "nome": "Moisés",
  "email": "moises.barsot2@email.com",
  "cpf": "12345678901",
  "telefone": "11999999999",
  "dataNascimento": "2005-07-03",
  "endereco": "Rua"
}
```
---
### 📌 Observação

Durante o desenvolvimento:

❌ Uso inicial de MySQL em container causou lentidão <br />
❌ VM gratuita não suportava múltiplos serviços pesados <br />
✅ Solução: migração para H2 em memória <br />
✅ Uso de Docker para padronização <br />
