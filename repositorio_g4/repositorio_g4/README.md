🎬 Sistema de Gestão de Acervo Cinematográfico & Streaming
Projeto de Banco de Dados Relacional desenvolvido para a disciplina de Laboratório de Banco de Dados da Universidade Católica de Brasília (UCB)[cite: 4, 10], sob orientação do Prof. Samuel Novais Moura Júnior.

---

## 📌 Objetivo

O sistema consiste em uma solução de banco de dados relacional para a gestão completa de um acervo cinematográfico e catálogo de serviços de streaming[cite: 4, 10]. A modelagem abrange desde a catalogação de obras (filmes e episódios/mídias derivadas) e profissionais do audiovisual (atores e diretores) até a distribuição temporal em plataformas e a interação final de usuários através de avaliações e críticas.
---

## 👥 Integrantes do Grupo

| Nome | Matrícula | GitHub |
|------|-----------|--------|
| João Pedro Souza Pereira | UC25200260 | joaopsouza-dev |
| Kenzo Matsunaga | UC25200299 | kenzomats |
| Giulia | UC25200440 | Giulia Valença de Melo - Giu_ |
| Kaylane | UC25200185 | Lanyx001 |

---

## 🚀 Funcionalidades

- **Autenticação**: tela de login com usuário e senha.
- **CRUD de Filmes**:
  - Cadastrar novo filme (título, diretor, ano, gênero, sinopse, nota).
  - Consultar filmes cadastrados (listagem e busca por título/gênero).
  - Atualizar informações de um filme existente.
  - Remover filme do catálogo.
- **Interface de usuário**: _(frontend web ou CLI — definir)_.

---

## 🛠️ Tecnologias

> Ajuste conforme as escolhas finais do grupo.

- **Backend / API**: _(ex: Node.js + Express)_
- **Frontend**: _(ex: React, ou CLI em Node/Python)_
- **Banco de dados**: _(ex: SQLite)_
- **Autenticação**: _(ex: JWT)_

### Ferramentas de Teste

- **Testes Unitários**: _(ex: Jest)_
- **Testes de API**: _(ex: Supertest / Postman + Newman)_
- **Testes E2E**: _(ex: Cypress / Playwright)_

---

## 📂 Estrutura do Projeto

```
catalogo-filmes/
.
├── 📁 docs/
│    ├── dicionario-dados.pdf
│    ├── mer-conceitual.pdf
│    ├── modelo-logico.pdf
│    └── relatorio-etapa1.pdf
├── 📁 sql/
│    ├── 📜 01_ddl.sql             
│    ├── 📜 02_carga.sql          
│    └── 📜 03_consultas.sql
├── 📄 README.md     
``
---

## ⚙️ Como Executar o Projeto

### Pré-requisitos

- Node.js (versão X ou superior) _(ajustar conforme stack)_
- _(outros pré-requisitos: banco de dados, etc.)_

### Passos

```bash
# Clonar o repositório
git clone https://github.com/<usuario>/catalogo-filmes.git
cd catalogo-filmes

# Instalar dependências do backend
cd backend
npm install

# Rodar o backend
npm start

# Instalar dependências do frontend (em outro terminal)
cd ../frontend
npm install
npm start
```

---

## ✅ Testes

### Rodando os testes unitários

```bash
cd backend
npm test
```

### Rodando os testes de API

```bash
cd backend
npm run test:api
```

### Rodando os testes E2E

```bash
cd frontend
npm run test:e2e
```

As evidências de execução (prints, logs e relatórios) estarão disponíveis em `docs/evidencias/`.

---

## 📄 Documentação

- [Dicionário dados](docs/dicionario-dados.pdf)
- [Histórias de Usuário (BDD)](docs/historias-usuario.md)
- [Plano de Testes](docs/plano-de-testes.md)
- [Relatório Final](docs/relatorio-final.md)

---

## 📚 Disciplina

Trabalho final desenvolvido para a disciplina de **Teste de Software**, sob orientação do(a) professor(a) _(nome)_, na Universidade Católica de Brasília (UCB).

---

## 📝 Licença

Projeto acadêmico sem fins comerciais, desenvolvido exclusivamente para fins didáticos.
