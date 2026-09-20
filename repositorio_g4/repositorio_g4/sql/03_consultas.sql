-- =============================================================================
-- DISCIPLINA: Laboratório de Banco de Dados (2026/2)
-- PROFESSOR: Samuel Novais Moura Júnior
-- ARTEFATO: A8 - Script de Consulta (03_consultas.sql)
-- DOMÍNIO: Acervo Cinematográfico / Streaming
-- =============================================================================

USE db_acervo_filmes;

-- ----------------------------------------------------
-- Consultas Básicas
-- ----------------------------------------------------

-- 01) Quantos filmes começam com a letra "A"?
	SELECT * FROM FILME 
		WHERE titulo LIKE 'A%'
	ORDER BY titulo;
    
-- 02) Quantos filmes possuem sequência?
	SELECT COUNT(*) FROM FILME
		WHERE id_filme_sequencia IS NOT NULL;

-- 03) Quais filmes são maiores que 1h e menores que 2h de duração?
	SELECT titulo, duracao FROM FILME
		WHERE duracao >= 60 AND duracao <= 120
	ORDER BY duracao;
        
-- 04) Quais filmes estão disponíveis entre os anos 2000 e 2020?
	SELECT * FROM FILME 
		WHERE ano_lancamento BETWEEN '2000' AND '2020'
	ORDER BY ano_lancamento;

-- 05) Quais filmes foram lançados em 2015?
	SELECT titulo, ano_lancamento FROM FILME
		WHERE ano_lancamento = 2015
	ORDER BY titulo;

-- ----------------------------------------------------
-- Consultas Junções e Agregação
-- ----------------------------------------------------
-- 06) Quantas plataformas existem em cada categoria?
	SELECT tipo, COUNT(*) AS categorias FROM PLATAFORMA
		GROUP BY tipo
	ORDER BY tipo;

-- 07) Quantos filmes tem a disponibilidade ilimitada que iniciaram após 2022?
	SELECT data_fim, COUNT(*) FROM DISPONIBILIDADE
		GROUP BY data_fim HAVING data_fim >= '2022-01-01'
	ORDER BY data_fim;

-- 08) Qual é a avaliação de cada filme?
	SELECT FILME.titulo, AVALIACAO.nota FROM FILME
		LEFT JOIN AVALIACAO
		ON FILME.id_filme = AVALIACAO.id_filme
    ORDER BY AVALIACAO.nota;

-- 09) Quais são os gêneros dos filmes?
	SELECT FILME.titulo, GENERO.nome
		FROM FILME
		INNER JOIN FILME_GENERO ON FILME.id_filme = FILME_GENERO.id_filme
		INNER JOIN GENERO ON FILME_GENERO.id_genero = GENERO.id_genero
	ORDER BY GENERO.nome;

-- 10) Quais plataformas tem quais filmes?
	SELECT FILME.titulo, PLATAFORMA.nome
		FROM FILME
		INNER JOIN DISPONIBILIDADE ON FILME.id_filme = DISPONIBILIDADE.id_filme
		INNER JOIN PLATAFORMA ON DISPONIBILIDADE.id_plataforma = PLATAFORMA.id_plataforma
	ORDER BY PLATAFORMA.nome;

-- ----------------------------------------------------
-- Consultas Avançadas
-- ----------------------------------------------------

-- 11) Quantos tiveram a disponibildade entre 2020 à 2021?
	SELECT COUNT(*) FROM FILME
		WHERE EXISTS (SELECT id_filme FROM DISPONIBILIDADE
						WHERE FILME.id_filme = DISPONIBILIDADE.id_filme
							AND DISPONIBILIDADE.data_inicio >= '2020-01-01'
							AND DISPONIBILIDADE.data_fim >= '2021-01-01')
	ORDER BY titulo;

-- 12) ????????????????????????/
	SELECT id_usuario, comentario FROM AVALIACAO
		WHERE EXISTS (SELECT id_usuario FROM USUARIO
						WHERE AVALIACAO.id_usuario = USUARIO.id_usuario
							AND USUARIO.id_usuario = 1)
	ORDER BY id_usuario;

-- 13) subconsulta correlacionada

-- 14) subconsulta correlacionada

-- 15) uma que responda a pergunta de negócio não trivial do domínio  

	-- NÃO É TIVIAL POIS: Cruza dados

-- 04) Em quantos filmes de romance *nome de ator* participou?
-- 05) Quais atores também são diretores?
-- 06) Quantos episódios existem *nome de serie*?