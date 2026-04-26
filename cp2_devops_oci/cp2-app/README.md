# CP2 - FIAP 2TDSPG 2026
## Aplicação Spring Boot + MySQL em Container

---

## 📋 Sobre o Projeto

API REST desenvolvida com Java/Spring Boot para o Checkpoint 2, com:
- **2 entidades**: `Produto` e `Cliente`
- **CRUD completo** para cada entidade
- **Conexão com MySQL** via Docker Container
- **Dados fictícios** carregados automaticamente na inicialização

---

## 🛠️ Tecnologias

| Tecnologia | Versão |
|---|---|
| Java | 17 |
| Spring Boot | 3.2.4 |
| Spring Data JPA | 3.2.4 |
| MySQL Connector | 8.x |
| Lombok | latest |
| Maven | 3.9.x |
| Docker | latest |

---

## 🚀 Como Rodar

### Opção 1 — Docker Compose (Recomendado para OCI)

```bash
# Subir MySQL + App juntos
docker-compose up -d

# Ver logs
docker-compose logs -f

# Parar tudo
docker-compose down
```

### Opção 2 — Rodar só o MySQL no Docker

```bash
# Subir apenas o MySQL
docker run -d \
  --name cp2-mysql \
  -e MYSQL_ROOT_PASSWORD=root123 \
  -e MYSQL_DATABASE=cp2db \
  -p 3306:3306 \
  mysql:8.0

# Rodar a aplicação localmente
mvn spring-boot:run
```

### Opção 3 — Compilar e Rodar o JAR

```bash
# Compilar
mvn clean package -DskipTests

# Rodar
java -jar target/cp2-app-1.0.0.jar
```

---

## 🌐 Endpoints Disponíveis

A aplicação sobe na porta **8080**.

### Produtos — `/api/produtos`

| Método | Endpoint | Descrição |
|---|---|---|
| GET | `/api/produtos` | Lista todos os produtos |
| GET | `/api/produtos/{id}` | Busca produto por ID |
| GET | `/api/produtos/categoria/{cat}` | Filtra por categoria |
| GET | `/api/produtos/buscar?nome=X` | Busca por nome |
| GET | `/api/produtos/preco?min=X&max=Y` | Filtra por faixa de preço |
| GET | `/api/produtos/sem-estoque` | Lista produtos sem estoque |
| POST | `/api/produtos` | Cria novo produto |
| PUT | `/api/produtos/{id}` | Atualiza produto |
| DELETE | `/api/produtos/{id}` | Remove produto |

### Clientes — `/api/clientes`

| Método | Endpoint | Descrição |
|---|---|---|
| GET | `/api/clientes` | Lista todos os clientes |
| GET | `/api/clientes/{id}` | Busca cliente por ID |
| GET | `/api/clientes/email?email=X` | Busca por e-mail |
| GET | `/api/clientes/buscar?nome=X` | Busca por nome |
| POST | `/api/clientes` | Cria novo cliente |
| PUT | `/api/clientes/{id}` | Atualiza cliente |
| DELETE | `/api/clientes/{id}` | Remove cliente |

---

## 📦 Exemplos de Requisições

### Criar Produto (POST)
```json
POST /api/produtos
Content-Type: application/json

{
  "nome": "Headset HyperX Cloud",
  "descricao": "Headset gamer com som surround 7.1",
  "preco": 599.90,
  "estoque": 12,
  "categoria": "Áudio"
}
```

### Criar Cliente (POST)
```json
POST /api/clientes
Content-Type: application/json

{
  "nome": "João Silva",
  "email": "joao.silva@email.com",
  "cpf": "98765432100",
  "telefone": "(11) 99999-8888",
  "dataNascimento": "1997-05-10",
  "endereco": "Rua das Acácias, 100, SP"
}
```

---

## ⚙️ Configuração da VM OCI (Oracle Cloud)

```bash
# 1. Instalar Docker na VM
sudo apt update && sudo apt install -y docker.io docker-compose

# 2. Clonar/transferir o projeto
scp -r cp2-app/ ubuntu@<IP_DA_VM>:~/

# 3. Entrar na VM e rodar
ssh ubuntu@<IP_DA_VM>
cd cp2-app
sudo docker-compose up -d

# 4. Liberar porta 8080 no Security List da OCI
# Acesse: OCI Console > VCN > Security Lists > Ingress Rules
# Adicione: TCP port 8080, Source 0.0.0.0/0
```

---

## 🗄️ Estrutura do Banco de Dados

```sql
-- Tabela: clientes
CREATE TABLE clientes (
  id           BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome         VARCHAR(100) NOT NULL,
  email        VARCHAR(100) UNIQUE NOT NULL,
  cpf          VARCHAR(11) UNIQUE,
  telefone     VARCHAR(15),
  data_nascimento DATE,
  endereco     VARCHAR(200),
  criado_em    DATETIME
);

-- Tabela: produtos
CREATE TABLE produtos (
  id           BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome         VARCHAR(100) NOT NULL,
  descricao    VARCHAR(255),
  preco        DECIMAL(10,2) NOT NULL,
  estoque      INT NOT NULL,
  categoria    VARCHAR(50) NOT NULL,
  criado_em    DATETIME,
  atualizado_em DATETIME
);
```

---

## 📁 Estrutura do Projeto

```
cp2-app/
├── src/main/java/br/com/fiap/cp2/
│   ├── Cp2Application.java        ← Classe principal
│   ├── controller/
│   │   ├── ProdutoController.java
│   │   └── ClienteController.java
│   ├── model/
│   │   ├── Produto.java
│   │   └── Cliente.java
│   ├── repository/
│   │   ├── ProdutoRepository.java
│   │   └── ClienteRepository.java
│   └── service/
│       ├── ProdutoService.java
│       └── ClienteService.java
├── src/main/resources/
│   ├── application.properties     ← Configurações MySQL
│   └── data.sql                   ← Dados fictícios
├── Dockerfile
├── docker-compose.yml
├── pom.xml
└── README.md
```

---

**FIAP - 2TDSPG - 2026** | CP2 - Infraestrutura Cloud com Docker e OCI
