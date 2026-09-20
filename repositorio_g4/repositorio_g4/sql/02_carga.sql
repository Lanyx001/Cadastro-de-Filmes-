-- =============================================================================
-- DISCIPLINA: Laboratório de Banco de Dados (2026/2)
-- PROFESSOR: Samuel Novais Moura Júnior
-- ARTEFATO: A7 - Script de Carga DML (02_carga.sql)
-- DOMÍNIO: Acervo Cinematográfico / Streaming
-- =============================================================================

USE db_acervo_filmes;

-- Desativar temporariamente verificações para carga limpa se necessário
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE AVALIACAO;
TRUNCATE TABLE DISPONIBILIDADE;
TRUNCATE TABLE FILME_GENERO;
TRUNCATE TABLE DIRECAO;
TRUNCATE TABLE ELENCO;
TRUNCATE TABLE EPISODIO;
TRUNCATE TABLE FILME;
TRUNCATE TABLE DIRETOR;
TRUNCATE TABLE ATOR;
TRUNCATE TABLE PESSOA;
TRUNCATE TABLE PLATAFORMA;
TRUNCATE TABLE GENERO;
TRUNCATE TABLE USUARIO;
SET FOREIGN_KEY_CHECKS = 1;

-- -----------------------------------------------------------------------------
-- 1. CARGA: GENERO (10 registos)
-- -----------------------------------------------------------------------------
INSERT INTO GENERO (id_genero, nome) VALUES
(1, 'Ação'),
(2, 'Drama'),
(3, 'Comédia'),
(4, 'Ficção Científica'),
(5, 'Terror'),
(6, 'Romance'),
(7, 'Animação'),
(8, 'Aventura'),
(9, 'Suspense'),
(10, 'Documentário');

-- -----------------------------------------------------------------------------
-- 2. CARGA: PLATAFORMA (8 registos)
-- -----------------------------------------------------------------------------
INSERT INTO PLATAFORMA (id_plataforma, nome, tipo) VALUES
(1, 'CineMax Taguatinga', 'Cinema'),
(2, 'Netflix', 'Streaming'),
(3, 'Amazon Prime Video', 'Streaming'),
(4, 'HBO Max', 'Streaming'),
(5, 'Disney+', 'Streaming'),
(6, 'Apple TV+', 'Streaming'),
(7, 'Telecine Cult', 'Canal TV'),
(8, 'Cine Drive-in Brasília', 'Cinema');

-- -----------------------------------------------------------------------------
-- 3. CARGA: USUARIO (25 registos fictícios)
-- -----------------------------------------------------------------------------
INSERT INTO USUARIO (id_usuario, nome, email) VALUES
(1, 'Lucas Silva', 'lucas.silva@exemplo.com'),
(2, 'Mariana Costa', 'mariana.costa@exemplo.com'),
(3, 'Pedro Henrique', 'pedro.henrique@exemplo.com'),
(4, 'Beatriz Souza', 'beatriz.souza@exemplo.com'),
(5, 'Rafael Alencar', 'rafael.alencar@exemplo.com'),
(6, 'Camila Rocha', 'camila.rocha@exemplo.com'),
(7, 'Gustavo Borges', 'gustavo.borges@exemplo.com'),
(8, 'Larissa Ramos', 'larissa.ramos@exemplo.com'),
(9, 'Thiago Mendes', 'thiago.mendes@exemplo.com'),
(10, 'Fernanda Lima', 'fernanda.lima@exemplo.com'),
(11, 'Rodrigo Tavares', 'rodrigo.tavares@exemplo.com'),
(12, 'Juliana Nogueira', 'juliana.nogueira@exemplo.com'),
(13, 'André Farias', 'andre.farias@exemplo.com'),
(14, 'Patrícia Castro', 'patricia.castro@exemplo.com'),
(15, 'Marcelo Antunes', 'marcelo.antunes@exemplo.com'),
(16, 'Aline Martins', 'aline.martins@exemplo.com'),
(17, 'Felipe Duarte', 'felipe.duarte@exemplo.com'),
(18, 'Carla Prado', 'carla.prado@exemplo.com'),
(19, 'Bruno Guimarães', 'bruno.guimaraes@exemplo.com'),
(20, 'Vanessa Dias', 'vanessa.dias@exemplo.com'),
(21, 'Diego Silveira', 'diego.silveira@exemplo.com'),
(22, 'Sofia Camargo', 'sofia.camargo@exemplo.com'),
(23, 'Vinícius Meireles', 'vinicius.meireles@exemplo.com'),
(24, 'Isabela Freitas', 'isabela.freitas@exemplo.com'),
(25, 'Eduardo Paiva', 'eduardo.paiva@exemplo.com');

-- -----------------------------------------------------------------------------
-- 4. CARGA: PESSOA (45 registos - Atende ao volume mínimo >= 40)
-- -----------------------------------------------------------------------------
INSERT INTO PESSOA (id_pessoa, nome, data_nascimento) VALUES
(1, 'Christopher Nolan', '1970-07-30'),
(2, 'Leonardo DiCaprio', '1974-11-11'),
(3, 'Quentin Tarantino', '1963-03-27'),
(4, 'Brad Pitt', '1963-12-18'),
(5, 'Greta Gerwig', '1983-08-04'),
(6, 'Margot Robbie', '1990-07-02'),
(7, 'Denis Villeneuve', '1967-10-03'),
(8, 'Timothée Chalamet', '1995-12-27'),
(9, 'Martin Scorsese', '1942-11-17'),
(10, 'Robert De Niro', '1943-08-17'),
(11, 'Steven Spielberg', '1946-12-18'),
(12, 'Tom Hanks', '1956-07-09'),
(13, 'Guillermo del Toro', '1964-10-09'),
(14, 'Doug Jones', '1960-05-24'),
(15, 'Jordan Peele', '1979-02-21'),
(16, 'Daniel Kaluuya', '1989-02-24'),
(17, 'Bong Joon-ho', '1969-09-14'),
(18, 'Song Kang-ho', '1967-01-17'),
(19, 'Alfonso Cuarón', '1961-11-28'),
(20, 'Yalitza Aparicio', '1993-12-11'),
(21, 'James Cameron', '1954-08-16'),
(22, 'Sam Worthington', '1976-08-02'),
(23, 'Ridley Scott', '1937-11-30'),
(24, 'Sigourney Weaver', '1949-10-08'),
(25, 'George Miller', '1945-03-03'),
(26, 'Charlize Theron', '1975-08-07'),
(27, 'Taika Waititi', '1975-08-16'),
(28, 'Roman Griffin Davis', '2007-03-05'),
(29, 'Damien Chazelle', '1985-01-19'),
(30, 'Ryan Gosling', '1980-11-12'),
(31, 'Wes Anderson', '1969-05-01'),
(32, 'Ralph Fiennes', '1962-12-22'),
(33, 'David Fincher', '1962-08-28'),
(34, 'Jesse Eisenberg', '1983-10-05'),
(35, 'Clint Eastwood', '1930-05-31'),
(36, 'Ben Affleck', '1972-08-15'),
(37, 'Kenneth Branagh', '1960-12-10'),
(38, 'Cillian Murphy', '1976-05-25'),
(39, 'Emma Stone', '1988-11-06'),
(40, 'Florence Pugh', '1996-01-03'),
(41, 'Zendaya Coleman', '1996-09-01'),
(42, 'Matt Damon', '1970-10-08'),
(43, 'Christian Bale', '1974-01-30'),
(44, 'Al Pacino', '1940-04-25'),
(45, 'Meryl Streep', '1949-06-22');

-- -----------------------------------------------------------------------------
-- 5. CARGA: ATOR (Subclasse)
-- Nota: id_pessoa 3, 5, 15, 27, 35, 36, 37 também exercem direção (Caso de contorno)
-- -----------------------------------------------------------------------------
INSERT INTO ATOR (id_pessoa, registro_profissional) VALUES
(2, 'DRT-102030-SP'),
(4, 'DRT-102031-RJ'),
(6, 'DRT-102032-DF'),
(8, 'DRT-102033-MG'),
(10, 'DRT-102034-SP'),
(12, 'DRT-102035-RJ'),
(14, 'DRT-102036-PR'),
(16, 'DRT-102037-RS'),
(18, 'DRT-102038-BA'),
(20, 'DRT-102039-PE'),
(22, 'DRT-102040-SC'),
(24, 'DRT-102041-GO'),
(26, 'DRT-102042-SP'),
(28, 'DRT-102043-RJ'),
(30, 'DRT-102044-DF'),
(32, 'DRT-102045-SP'),
(34, 'DRT-102046-MG'),
(35, 'DRT-102047-RS'), -- Ator e Diretor
(36, 'DRT-102048-RJ'), -- Ator e Diretor
(37, 'DRT-102049-SP'), -- Ator e Diretor
(38, 'DRT-102050-DF'),
(39, 'DRT-102051-SP'),
(40, 'DRT-102052-RJ'),
(41, 'DRT-102053-MG'),
(42, 'DRT-102054-SP'),
(43, 'DRT-102055-RJ'),
(44, 'DRT-102056-SP'),
(45, 'DRT-102057-RJ'),
(3,  'DRT-102058-SP'), -- Tarantino atua pontualmente
(5,  'DRT-102059-RJ'), -- Greta Gerwig atua
(15, 'DRT-102060-DF'), -- Jordan Peele atua
(27, 'DRT-102061-SP'); -- Taika Waititi atua

-- -----------------------------------------------------------------------------
-- 6. CARGA: DIRETOR (Subclasse)
-- -----------------------------------------------------------------------------
INSERT INTO DIRETOR (id_pessoa, registro_diretor) VALUES
(1, 'DIR-5001-BR'),
(3, 'DIR-5002-BR'),
(5, 'DIR-5003-BR'),
(7, 'DIR-5004-BR'),
(9, 'DIR-5005-BR'),
(11, 'DIR-5006-BR'),
(13, 'DIR-5007-BR'),
(15, 'DIR-5008-BR'),
(17, 'DIR-5009-BR'),
(19, 'DIR-5010-BR'),
(21, 'DIR-5011-BR'),
(23, 'DIR-5012-BR'),
(25, 'DIR-5013-BR'),
(27, 'DIR-5014-BR'),
(29, 'DIR-5015-BR'),
(31, 'DIR-5016-BR'),
(33, 'DIR-5017-BR'),
(35, 'DIR-5018-BR'),
(36, 'DIR-5019-BR'),
(37, 'DIR-5020-BR');

-- -----------------------------------------------------------------------------
-- 7. CARGA: FILME (42 registos - Atende ao volume mínimo >= 40)
-- Casos de contorno: sequências ligadas e filmes desativados (RN20)
-- -----------------------------------------------------------------------------
-- Inserção inicial de filmes originais
INSERT INTO FILME (id_filme, titulo, ano_lancamento, duracao, status, id_filme_sequencia) VALUES
(1, 'Batman Begins', 2005, 140, 'ativo', NULL),
(2, 'The Dark Knight', 2008, 152, 'ativo', NULL),
(3, 'The Dark Knight Rises', 2012, 165, 'ativo', NULL),
(4, 'Dune: Part One', 2021, 155, 'ativo', NULL),
(5, 'Dune: Part Two', 2024, 166, 'ativo', NULL),
(6, 'Alien', 1979, 117, 'ativo', NULL),
(7, 'Aliens', 1986, 137, 'ativo', NULL),
(8, 'Avatar', 2009, 162, 'ativo', NULL),
(9, 'Avatar: The Way of Water', 2022, 192, 'ativo', NULL),
(10, 'Inception', 2010, 148, 'ativo', NULL),
(11, 'Interstellar', 2014, 169, 'ativo', NULL),
(12, 'Oppenheimer', 2023, 180, 'ativo', NULL),
(13, 'Pulp Fiction', 1994, 154, 'ativo', NULL),
(14, 'Inglourious Basterds', 2009, 153, 'ativo', NULL),
(15, 'Once Upon a Time in Hollywood', 2019, 161, 'ativo', NULL),
(16, 'Lady Bird', 2017, 94, 'ativo', NULL),
(17, 'Little Women', 2019, 135, 'ativo', NULL),
(18, 'Barbie', 2023, 114, 'ativo', NULL),
(19, 'Arrival', 2016, 116, 'ativo', NULL),
(20, 'Blade Runner 2049', 2017, 164, 'ativo', NULL),
(21, 'Taxi Driver', 1976, 114, 'ativo', NULL),
(22, 'Goodfellas', 1990, 145, 'ativo', NULL),
(23, 'The Irishman', 2019, 209, 'ativo', NULL),
(24, 'Jurassic Park', 1993, 127, 'ativo', NULL),
(25, 'Schindler''s List', 1993, 195, 'ativo', NULL),
(26, 'Saving Private Ryan', 1998, 169, 'ativo', NULL),
(27, 'Pan''s Labyrinth', 2006, 118, 'ativo', NULL),
(28, 'The Shape of Water', 2017, 123, 'ativo', NULL),
(29, 'Get Out', 2017, 104, 'ativo', NULL),
(30, 'Us', 2019, 116, 'ativo', NULL),
(31, 'Nope', 2022, 130, 'ativo', NULL),
(32, 'Parasite', 2019, 132, 'ativo', NULL),
(33, 'Roma', 2018, 135, 'ativo', NULL),
(34, 'Mad Max: Fury Road', 2015, 120, 'ativo', NULL),
(35, 'Jojo Rabbit', 2019, 108, 'ativo', NULL),
(36, 'La La Land', 2016, 128, 'ativo', NULL),
(37, 'Whiplash', 2014, 106, 'ativo', NULL),
(38, 'The Grand Budapest Hotel', 2014, 99, 'ativo', NULL),
(39, 'The Social Network', 2010, 120, 'ativo', NULL),
(40, 'Unforgiven', 1992, 130, 'ativo', NULL),
(41, 'The Town', 2010, 125, 'ativo', NULL),
(42, 'Filme Piloto Descartado', 2020, 90, 'desativado', NULL); -- Exclusão lógica (RN20)

-- Estabelecendo autorrelacionamento (sequências)
UPDATE FILME SET id_filme_sequencia = 2 WHERE id_filme = 1; -- Batman Begins -> Dark Knight
UPDATE FILME SET id_filme_sequencia = 3 WHERE id_filme = 2; -- Dark Knight -> Dark Knight Rises
UPDATE FILME SET id_filme_sequencia = 5 WHERE id_filme = 4; -- Dune 1 -> Dune 2
UPDATE FILME SET id_filme_sequencia = 7 WHERE id_filme = 6; -- Alien -> Aliens
UPDATE FILME SET id_filme_sequencia = 9 WHERE id_filme = 8; -- Avatar 1 -> Avatar 2

-- -----------------------------------------------------------------------------
-- 8. CARGA: EPISODIO (15 registos de conteúdos especiais/episódicos)
-- -----------------------------------------------------------------------------
INSERT INTO EPISODIO (id_filme, numero_episodio, titulo, duracao) VALUES
(1, 1, 'Making of: A Origem do Morcego', 45),
(1, 2, 'Design do Batmóvel', 25),
(2, 1, 'Criando o Coringa de Heath Ledger', 50),
(4, 1, 'Construindo o Universo de Arrakis', 60),
(5, 1, 'A Linguagem dos Fremen', 30),
(10, 1, 'A Física dos Sonhos', 35),
(11, 1, 'Buracos Negros e Astrofísica Real', 55),
(12, 1, 'O Efeito Trinity nos Bastidores', 40),
(18, 1, 'O Mundo Cor-de-Rosa na Prática', 28),
(27, 1, 'Efeitos Práticos do Fauno', 32),
(32, 1, 'A Arquitetura da Casa dos Park', 42),
(34, 1, 'Veículos em Chamas no Deserto', 52),
(36, 1, 'Coreografando no Trânsito de LA', 26),
(38, 1, 'Miniaturas de Zubrowka', 20),
(42, 1, 'Episódio Teste Não Lançado', 45);

-- -----------------------------------------------------------------------------
-- 9. CARGA: FILME_GENERO (Associação N:N)
-- -----------------------------------------------------------------------------
INSERT INTO FILME_GENERO (id_filme, id_genero) VALUES
(1, 1), (1, 9),
(2, 1), (2, 2), (2, 9),
(3, 1), (3, 9),
(4, 4), (4, 8),
(5, 4), (5, 8),
(6, 4), (6, 5),
(7, 1), (7, 4), (7, 5),
(8, 4), (8, 8),
(9, 4), (9, 8),
(10, 4), (10, 9),
(11, 4), (11, 2),
(12, 2), (12, 10),
(13, 2), (13, 9),
(14, 1), (14, 2),
(15, 2), (15, 3),
(16, 2), (16, 3),
(17, 2), (17, 6),
(18, 3), (18, 8),
(19, 4), (19, 2),
(20, 4), (20, 9),
(21, 2),
(22, 2),
(23, 2),
(24, 4), (24, 8),
(25, 2),
(26, 1), (26, 2),
(27, 2), (27, 5),
(28, 2), (28, 6),
(29, 5), (29, 9),
(30, 5), (30, 9),
(31, 4), (31, 5),
(32, 2), (32, 9),
(33, 2),
(34, 1), (34, 4),
(35, 2), (35, 3),
(36, 2), (36, 6),
(37, 2),
(38, 3), (38, 8),
(39, 2),
(40, 2),
(41, 1), (41, 2),
(42, 3);

-- -----------------------------------------------------------------------------
-- 10. CARGA: DIRECAO (Associação N:N)
-- -----------------------------------------------------------------------------
INSERT INTO DIRECAO (id_filme, id_pessoa_diretor) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 7),
(5, 7),
(6, 23),
(7, 21), -- Aliens dirigido por James Cameron
(8, 21),
(9, 21),
(10, 1),
(11, 1),
(12, 1),
(13, 3),
(14, 3),
(15, 3),
(16, 5),
(17, 5),
(18, 5),
(19, 7),
(20, 7),
(21, 9),
(22, 9),
(23, 9),
(24, 11),
(25, 11),
(26, 11),
(27, 13),
(28, 13),
(29, 15),
(30, 15),
(31, 15),
(32, 17),
(33, 19),
(34, 25),
(35, 27),
(36, 29),
(37, 29),
(38, 31),
(39, 33),
(40, 35),
(41, 36),
(42, 27);

-- -----------------------------------------------------------------------------
-- 11. CARGA: ELENCO (Continuação e Conclusão)
-- -----------------------------------------------------------------------------
INSERT INTO ELENCO (id_filme, id_pessoa_ator, personagem) VALUES
(1, 43, 'Bruce Wayne / Batman'),
(2, 43, 'Bruce Wayne / Batman'),
(2, 38, 'Dr. Jonathan Crane'),
(3, 43, 'Bruce Wayne / Batman'),
(4, 8, 'Paul Atreides'),
(4, 41, 'Chani'),
(5, 8, 'Paul Atreides'),
(5, 41, 'Chani'),
(5, 40, 'Princesa Irulan'),
(6, 24, 'Ellen Ripley'),
(7, 24, 'Ellen Ripley'),
(8, 22, 'Jake Sully'),
(8, 24, 'Dra. Grace Augustine'),
(9, 22, 'Jake Sully'),
(9, 24, 'Kiri'),
(10, 2, 'Dom Cobb'),
(10, 38, 'Robert Fischer'),
(11, 42, 'Dr. Mann'),
(12, 38, 'J. Robert Oppenheimer'),
(12, 40, 'Jean Tatlock'),
(12, 42, 'Leslie Groves'),
(13, 4, 'Vincent Vega'),
(14, 4, 'Tenente Aldo Raine'),
(15, 2, 'Rick Dalton'),
(15, 4, 'Cliff Booth'),
(15, 6, 'Sharon Tate'),
(16, 5, 'Voz da Professora'),
(17, 8, 'Laurie Laurence'),
(17, 40, 'Amy March'),
(17, 45, 'Tia March'),
(18, 6, 'Barbie Estereotipada'),
(18, 30, 'Ken'),
(19, 34, 'Ian Donnelly (fictício)'),
(20, 30, 'Oficial K'),
(21, 10, 'Travis Bickle'),
(22, 10, 'Jimmy Conway'),
(23, 10, 'Frank Sheeran'),
(23, 44, 'Jimmy Hoffa'),
(24, 14, 'Cientista InGen'),
(25, 32, 'Amon Göth'),
(26, 12, 'Capitão John Miller'),
(26, 42, 'Soldado James Ryan'),
(27, 14, 'O Fauno / Homem Pálido'),
(28, 14, 'Homem Anfíbio'),
(29, 16, 'Chris Washington'),
(30, 16, 'Gabe Wilson (voz/participação)'),
(31, 16, 'Otis Jr. Haywood'),
(32, 18, 'Kim Ki-taek'),
(33, 20, 'Cleo'),
(34, 26, 'Imperatriz Furiosa'),
(35, 27, 'Adolf (versão imaginária)'),
(35, 28, 'Jojo Betzler'),
(36, 30, 'Sebastian Wilder'),
(36, 39, 'Mia Dolan'),
(37, 34, 'Músico Concorrente'),
(38, 32, 'Monsieur Gustave H.'),
(39, 34, 'Mark Zuckerberg'),
(40, 35, 'William Munny'),
(41, 36, 'Doug MacRay'),
(42, 28, 'Personagem de Teste');

-- -----------------------------------------------------------------------------
-- 12. CARGA: DISPONIBILIDADE (Associação Temporal FILME <-> PLATAFORMA)
-- Casos de contorno: data_fim aberta (NULL) e reentradas temporais
-- -----------------------------------------------------------------------------
INSERT INTO DISPONIBILIDADE (id_filme, id_plataforma, data_inicio, data_fim) VALUES
-- Histórico e reentrada na mesma plataforma (caso de contorno temporal)
(1, 4, '2021-01-01', '2021-12-31'),
(1, 4, '2023-01-01', NULL), -- Atualmente em catálogo aberto
(2, 4, '2021-01-01', '2021-12-31'),
(2, 4, '2023-01-01', NULL),
(3, 4, '2023-01-01', NULL),
(4, 4, '2022-03-01', '2023-06-30'),
(4, 2, '2023-10-01', NULL), -- Migrou para outra plataforma
(5, 1, '2024-03-01', '2024-05-30'), -- Exibição em cinema
(5, 4, '2024-06-01', NULL),
(6, 5, '2021-05-01', NULL),
(7, 5, '2021-05-01', NULL),
(8, 1, '2009-12-18', '2010-04-30'),
(8, 5, '2020-11-17', NULL),
(9, 1, '2022-12-15', '2023-04-15'),
(9, 5, '2023-06-07', NULL),
(10, 2, '2020-01-01', '2022-12-31'),
(10, 3, '2023-01-01', NULL),
(11, 3, '2021-08-01', NULL),
(12, 1, '2023-07-20', '2023-11-30'),
(12, 3, '2024-04-01', NULL),
(13, 2, '2019-01-01', NULL),
(14, 2, '2020-05-01', NULL),
(15, 2, '2021-03-01', '2022-03-01'),
(16, 2, '2022-07-01', NULL),
(17, 3, '2021-02-01', NULL),
(18, 1, '2023-07-20', '2023-10-31'),
(18, 4, '2023-12-15', NULL),
(19, 2, '2021-09-01', NULL),
(20, 2, '2020-01-01', '2021-12-31'),
(21, 7, '2023-01-01', NULL),
(22, 4, '2022-01-01', NULL),
(23, 2, '2019-11-27', NULL),
(24, 3, '2020-01-01', NULL),
(25, 2, '2021-06-01', NULL),
(26, 3, '2022-04-01', NULL),
(27, 2, '2020-10-01', NULL),
(28, 5, '2021-01-01', NULL),
(29, 2, '2019-08-01', '2021-08-01'),
(30, 3, '2021-05-01', NULL),
(31, 3, '2023-03-01', NULL),
(32, 4, '2021-02-01', NULL),
(33, 2, '2018-12-14', NULL),
(34, 4, '2020-05-01', NULL),
(35, 5, '2021-07-01', NULL),
(36, 2, '2019-03-01', NULL),
(37, 4, '2021-11-01', NULL),
(38, 5, '2021-08-01', NULL),
(39, 4, '2022-09-01', NULL),
(40, 7, '2022-01-01', NULL),
(41, 4, '2021-04-01', NULL);

-- -----------------------------------------------------------------------------
-- 13. CARGA: AVALIACAO (Tabela de Maior Movimento - 105 Registos)
-- Atende ao requisito do edital: Mínimo de 100 linhas na maior tabela
-- Casos de contorno: comentários NULL, notas mínimas (0.0) e máximas (10.0)
-- -----------------------------------------------------------------------------
INSERT INTO AVALIACAO (id_filme, id_usuario, nota, comentario, data_avaliacao) VALUES
(1, 1, 9.0, 'Excelente início de trilogia, ambientação muito realista.', '2024-01-10 14:20:00'),
(1, 2, 8.5, 'Christian Bale convence muito bem como Bruce Wayne.', '2024-01-12 19:30:00'),
(1, 3, 7.5, NULL, '2024-01-15 08:45:00'), -- Comentário nulo proposital
(2, 1, 10.0, 'Uma obra-prima irretocável do cinema contemporâneo.', '2024-01-10 17:00:00'), -- Nota máxima
(2, 2, 10.0, 'O Coringa de Heath Ledger rouba todas as cenas.', '2024-01-11 21:15:00'),
(2, 3, 9.5, 'Roteiro tenso e com ritmo perfeito.', '2024-01-13 11:10:00'),
(2, 4, 10.0, NULL, '2024-01-14 22:05:00'),
(2, 5, 9.0, 'Um dos melhores filmes de ação já feitos.', '2024-01-16 18:40:00'),
(3, 1, 8.0, 'Fechamento digno, embora inferior ao anterior.', '2024-01-20 20:00:00'),
(3, 2, 7.5, 'Vilão Bane é intimidador, mas o final é apressado.', '2024-01-22 15:30:00'),
(3, 6, 8.5, NULL, '2024-01-23 09:10:00'),
(4, 4, 9.0, 'Visual e som arrebatadores.', '2024-02-01 19:25:00'),
(4, 5, 8.5, 'Adaptação fiel e com ritmo contemplativo.', '2024-02-02 21:00:00'),
(4, 6, 9.0, 'A construção do universo é impecável.', '2024-02-03 16:45:00'),
(4, 7, 7.0, 'Achei o filme muito longo e incompleto.', '2024-02-05 14:15:00'),
(5, 4, 9.5, 'Superou com folga a primeira parte!', '2024-03-10 22:30:00'),
(5, 5, 10.0, 'Sequências de ação e drama épicas.', '2024-03-11 18:20:00'),
(5, 6, 9.0, NULL, '2024-03-12 12:00:00'),
(5, 7, 8.5, 'Trilha sonora impressionante do Hans Zimmer.', '2024-03-14 20:10:00'),
(5, 8, 9.5, 'Clássico moderno instantâneo.', '2024-03-15 17:50:00'),
(6, 8, 9.0, 'Suspense espacial atemporal.', '2024-02-10 21:00:00'),
(6, 9, 8.5, 'Efeitos práticos impressionantes para a época.', '2024-02-12 18:30:00'),
(6, 10, 9.0, NULL, '2024-02-15 11:20:00'),
(7, 8, 9.0, 'Ação ininterrupta brilhante de James Cameron.', '2024-02-18 20:40:00'),
(7, 9, 8.5, 'Diferente do primeiro, mas igualmente memorável.', '2024-02-20 14:10:00'),
(8, 10, 7.5, 'Revolucionário em termos visuais, roteiro simples.', '2024-02-22 16:00:00'),
(8, 11, 8.0, NULL, '2024-02-25 19:15:00'),
(9, 10, 7.0, 'Tecnicamente perfeito, porém redundante.', '2024-03-01 22:10:00'),
(9, 11, 7.5, 'CGI subaquático impressionante.', '2024-03-03 15:40:00'),
(10, 1, 9.5, 'Conceito genial e execução muito criativa.', '2024-01-25 13:00:00'),
(10, 3, 9.0, 'Trilha marcante e edição primorosa.', '2024-01-28 17:50:00'),
(10, 12, 8.5, NULL, '2024-02-02 20:30:00'),
(10, 13, 10.0, 'Meu filme favorito do Nolan.', '2024-02-04 22:45:00'),
(11, 1, 10.0, 'Emocionante e cientificamente audacioso.', '2024-02-06 21:10:00'),
(11, 12, 9.5, 'O final me fez chorar de verdade.', '2024-02-08 19:00:00'),
(11, 13, 9.0, NULL, '2024-02-10 14:35:00'),
(11, 14, 8.0, 'A parte científica é confusa mas envolvente.', '2024-02-11 11:00:00'),
(12, 1, 9.5, 'Biografia densa, montagem brilhante.', '2024-02-15 16:20:00'),
(12, 14, 9.0, 'Cillian Murphy em seu melhor momento.', '2024-02-17 18:40:00'),
(12, 15, 8.5, NULL, '2024-02-19 21:50:00'),
(12, 16, 9.0, 'A sequência do teste Trinity é espetacular.', '2024-02-21 23:10:00'),
(13, 15, 9.5, 'Diálogos clássicos inesquecíveis.', '2024-02-23 15:00:00'),
(13, 16, 9.0, 'Estrutura não linear icônica.', '2024-02-24 19:30:00'),
(13, 17, 8.5, NULL, '2024-02-26 12:45:00'),
(14, 15, 9.0, 'A cena da taberna é uma aula de tensão.', '2024-02-28 20:15:00'),
(14, 17, 9.0, 'Christoph Waltz entrega uma atuação histórica.', '2024-03-01 17:00:00'),
(15, 16, 8.0, 'Uma homenagem carinhosa à antiga Hollywood.', '2024-03-02 21:40:00'),
(15, 18, 7.5, NULL, '2024-03-04 14:20:00'),
(16, 18, 8.5, 'Sensível, cômico e muito humano.', '2024-03-05 18:10:00'),
(16, 19, 9.0, 'Greta Gerwig brilha na direção autoral.', '2024-03-06 20:30:00'),
(17, 18, 8.5, 'Adaptação contemporânea excelente do romance.', '2024-03-08 16:00:00'),
(17, 19, 8.0, NULL, '2024-03-09 11:30:00'),
(18, 2, 8.5, 'Divertido, inteligente e visualmente lindo.', '2024-03-11 19:50:00'),
(18, 6, 8.0, 'Margot Robbie perfeita no papel principal.', '2024-03-12 21:00:00'),
(18, 20, 7.5, NULL, '2024-03-13 14:15:00'),
(18, 21, 6.5, 'Esperava mais crítica e menos apelo comercial.', '2024-03-15 17:35:00'),
(19, 7, 9.5, 'Abordagem filosófica primorosa sobre comunicação.', '2024-03-16 20:00:00'),
(19, 21, 9.0, NULL, '2024-03-18 10:40:00'),
(20, 7, 9.0, 'Fotografia que beira a perfeição artística.', '2024-03-20 22:15:00'),
(20, 22, 8.5, 'Continuação com identidade própria e respeito ao clássico.', '2024-03-22 16:30:00'),
(21, 9, 9.5, 'Estudo sombrio sobre alienação urbana.', '2024-03-23 18:45:00'),
(21, 22, 9.0, NULL, '2024-03-24 14:00:00'),
(22, 9, 9.5, 'O padrão ouro dos filmes de máfia moderna.', '2024-03-25 21:10:00'),
(22, 23, 9.0, 'Ritmo alucinante e atuações inspiradas.', '2024-03-26 19:20:00'),
(23, 23, 8.0, 'Melancólico e reflexivo, mas longo demais.', '2024-03-27 22:00:00'),
(23, 24, 8.5, NULL, '2024-03-28 15:30:00'),
(24, 11, 9.5, 'Um marco divisor na história do cinema comercial.', '2024-03-29 17:40:00'),
(24, 24, 9.0, 'Sentimento de aventura genuíno.', '2024-03-30 20:10:00'),
(25, 11, 10.0, 'História pesada contada com extrema sensibilidade.', '2024-04-01 19:00:00'),
(25, 25, 9.5, NULL, '2024-04-02 21:30:00'),
(26, 11, 9.5, 'A sequência da praia da Normandia é inigualável.', '2024-04-03 16:15:00'),
(26, 25, 9.0, 'Filme de guerra mais impactante já feito.', '2024-04-04 18:50:00'),
(27, 13, 9.0, 'Conto de fadas sombrio e poético.', '2024-04-05 20:30:00'),
(27, 25, 8.5, NULL, '2024-04-06 13:20:00'),
(28, 13, 8.0, 'Lindo romance visual e fábula tocante.', '2024-04-07 15:45:00'),
(29, 15, 9.5, 'Roteiro muito original com crítica social precisa.', '2024-04-08 21:00:00'),
(29, 16, 9.0, 'Suspense que prende do primeiro ao último minuto.', '2024-04-09 19:10:00'),
(30, 16, 7.5, 'Bons momentos de tensão, desfecho discutível.', '2024-04-10 22:15:00'),
(31, 16, 8.0, NULL, '2024-04-11 14:00:00'),
(32, 17, 10.0, 'Construção dramática perfeita e viradas geniais.', '2024-04-12 20:45:00'),
(32, 18, 9.5, 'Mereceu todos os prêmios conquistados.', '2024-04-13 18:30:00'),
(33, 19, 8.5, 'Fotografia em preto e branco magistral.', '2024-04-14 16:00:00'),
(34, 20, 9.5, 'Ação prática do mais alto nível.', '2024-04-15 21:40:00'),
(34, 21, 9.0, NULL, '2024-04-16 11:20:00'),
(35, 22, 8.5, 'Equilíbrio sutil entre comédia e drama histórico.', '2024-04-17 19:30:00'),
(36, 2, 9.0, 'Canções cativantes e química fantástica da dupla.', '2024-04-18 20:50:00'),
(36, 23, 8.5, NULL, '2024-04-19 14:10:00'),
(37, 24, 9.5, 'Atuação estrondosa de J.K. Simmons.', '2024-04-20 17:00:00'),
(38, 25, 8.5, 'Estética simétrica e humor elegante impecáveis.', '2024-04-21 21:15:00'),
(39, 1, 9.0, 'Roteiro rápido e muito afiado.', '2024-04-22 18:00:00'),
(40, 3, 9.0, 'Desconstrução do mito do velho oeste.', '2024-04-23 20:20:00'),
(41, 5, 8.0, 'Bom filme policial e assalto tenso.', '2024-04-24 22:00:00'),
(42, 1, 0.0, 'Horrível, piloto sem sentido e mal produzido.', '2024-04-25 10:00:00'), -- Nota mínima (0.0) em filme desativado
(42, 2, 0.5, 'Péssima produção, claramente descartável.', '2024-04-25 11:15:00'),
(1, 4, 8.0, 'Revendo anos depois, continua muito bom.', '2024-05-01 19:00:00'),
(2, 6, 9.5, 'Cenas de ação muito bem filmadas.', '2024-05-02 21:30:00'),
(3, 7, 7.0, NULL, '2024-05-03 14:40:00'),
(4, 8, 8.5, 'Atmosfera e figurinos espetaculares.', '2024-05-04 18:20:00'),
(5, 9, 9.0, 'Grandioso em todos os sentidos.', '2024-05-05 20:00:00'),
(10, 10, 9.0, 'Revi pela terceira vez e descobri novos detalhes.', '2024-05-06 22:10:00'),
(11, 11, 10.0, 'Perfeição cinematográfica.', '2024-05-07 16:50:00'),
(12, 12, 9.0, 'Muito tenso nos minutos que antecedem o teste.', '2024-05-08 19:40:00'),
(13, 13, 9.5, NULL, '2024-05-09 23:00:00'),
(14, 14, 9.0, 'Humor ácido e ótima reconstituição de época.', '2024-05-10 17:30:00'),
(32, 15, 10.0, 'Um dos melhores roteiros já premiados na história.', '2024-05-11 21:00:00');