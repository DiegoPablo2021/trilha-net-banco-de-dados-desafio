-- 1 - Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao -- Trouxe a Duracao como est� ilustrado na imagem l� na descri��o do desafio, POR�M, no enunciado pede apenas (Nome e Ano, ordenados por ordem crescente do Ano)
FROM Filmes
ORDER BY Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome LIKE '%De Volta para o Futuro'

-- 4 - Buscar os filmes lan�ados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Duracao) AS DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY DuracaoTotal DESC

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE UPPER(Genero) = 'M'

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE UPPER(Genero) = 'F'
ORDER BY PrimeiroNome

-- 10 - Buscar o nome do filme e o g�nero
SELECT F.Nome AS NomeDoFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT F.Nome AS NomeDoFilme, G.Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome AS NomeDoFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
JOIN Atores AS A ON EF.IdAtor = A.Id