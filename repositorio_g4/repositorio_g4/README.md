🎬 Sistema de Gestão de Acervo Cinematográfico & Streaming
---

## 📌 Objetivo

O sistema consiste em uma solução de banco de dados relacional para a gestão completa de um acervo cinematográfico e catálogo de serviços de streaming. 
A modelagem abrange desde a catalogação de obras (filmes e episódios/mídias derivadas) e profissionais do audiovisual (atores e diretores) até a distribuição temporal em plataformas e a interação final de usuários através de avaliações e críticas.
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

1. Gestão do Acervo Cinematográfico Cadastro de Obras: Registo de filmes contendo título, ano de lançamento, duração e estado (ativo/desativado).   Autorrelacionamento de Sequências: Vinculação de sequências diretas e franquias entre filmes (POSSUI SEQUÊNCIA).  Mídias e Conteúdos Fracionados (Entidade Fraca): Registo de episódios ou conteúdos especiais dependentes da existência do filme/série pai.   Categorização Temática: Associação de filmes a múltiplos géneros cinematográficos (N:M).

2. Gestão de Pessoas e Ficha Técnica Herança e Especialização (t, o): Cadastro de pessoas com especialização total e sobreposta em Atores e Diretores (um mesmo indivíduo pode atuar e/ou dirigir).   Controlo de Elenco: Associação de atores a filmes com registo obrigatório do personagem interpretado.   Controlo de Direção: Mapeamento da equipa de direção responsável por cada obra.
   
3. Distribuição e Exibição Temporal Gestão de Plataformas: Mapeamento de canais de exibição (Streaming, Cinema, TV).   Janela Temporal de Disponibilidade: Controlo de início e fim da concessão de exibição de cada filme por plataforma.
   
4. Interação e Avaliação do Utilizador Cadastro de Utilizadores: Registo de perfil de utilizador com e-mail único.   Avaliação de Conteúdo: Submissão de notas (entre 0.0 e 10.0), comentários/críticas e data da avaliação.   Exclusão Lógica: Preservação do histórico e integridade do banco através da alteração de estado para desativado sem perda de dados.

---

## 🛠️ Tecnologias

SGBD Relacional: MySQL 8.0+ / MariaDB 10.4+   
- Linguagem SQL: SQL ANSI (DDL para criação de schemas, DML para povoamento e DQL para consultas)   
- Ferramentas de Modelagem: draw.io, Lucidchart e Mermaid.js   
- Ferramentas de Administração de BD: MySQL Workbench / DBeaver / CLI do MySQL   
- Controlo de Versão: Git e GitHub
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

🚀 Instruções de Execução:
Pré-requisitos
  MySQL Server 8.0+ ou MariaDB 10.4+
  MySQL Workbench, DBeaver ou CLI do MySQL 
```
Passo a Passo

Clone o repositório:

Bash
git clone https://github.com/Lanyx001/cadastro-de-filmes-bd.git
cd cadastro-de-filmes-bd

Execute o script DDL (Criação do Banco e Tabelas):
Bashmysql -u root -p < 01_ddl.sql
Este script cria o banco db_acervo_filmes, todas as restrições (CHECK, FOREIGN KEY, UNIQUE) e os índices auxiliares (idx_filme_titulo, idx_pessoa_nome, idx_disp_periodo).   

Execute o script DML (Carga de Dados):

Bash
mysql -u root -p < 02_carga.sql

Execute as Consultas SQL de Teste:

Bash
mysql -u root -p db_acervo_filmes < 03_consultas.sql

---


---

## 📄 Documentação

- [Dicionario dados](docs/dicionario-dados.pdf)
- [mer-conceitual](docs/mer-conceitual.pdf)
- [modelo-logico](docs/modelo-logico.pdf)
- [Relatorio etapa1](docs/relatorio-etapa1.pdf)

---

## 📚 Disciplina

Trabalho final desenvolvido para a disciplina de **Laboratório de banco de dados**, sob orientação do(a) professor(a) Samuel Novais Moura Júnior, na Universidade Católica de Brasília (UCB).

---

## 📝 Licença

Projeto acadêmico sem fins comerciais, desenvolvido exclusivamente para fins didáticos.
