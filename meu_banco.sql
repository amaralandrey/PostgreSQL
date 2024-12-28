-- Acessar o PostgreSQL
sudo -i -u postgres

-- Abrir o terminal do PostgreSQL
psql

-- Criar um banco de dados
CREATE DATABASE meu_banco;

-- Conectar ao banco de dados criado
\c meu_banco

-- Criar tabela de exemplo
CREATE TABLE filmes (
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(100),
	ano INT,
	genero VARCHAR(5)
);

-- Inserir dados na tabela 
INSERT INTO filmes (titulo, ano, genero)
VALUES 
('O Senhor dos Anéis', 2001, 'Fantasia'),
('Matrix', 1999, 'Ficção Científica'),
('Batman: O Cavaleiro das Trevas', 2008, 'Ação');

-- Alterar o tipo da coluna
ALTER TABLE filmes ALTER COLUMN genero TYPE VARCHAR(50);

-- Consultar dados inseridos
SELECT * FROM filmes;

-- Alterar um registro
UPDATE filmes
SET genero = 'Ação'
WHERE titulo = 'Matrix';

-- Confirmar se o gênero do filme foi alterado
SELECT genero FROM filmes WHERE titulo = 'Matrix';

-- Consulta a todos os filmes do gênero ação
SELECT * FROM filmes WHERE genero = 'Ação';

-- Excluir um registro
DELETE FROM filmes WHERE titulo = 'O Senhor dos Anéis';

-- Excluir a tabela
DROP TABLE filmes;

-- Desconectar do banco de dados
\q

-- Excluir o banco de dados
DROP DATABASE meu_banco;

-- Sair do terminal PostgreSQL
\q

