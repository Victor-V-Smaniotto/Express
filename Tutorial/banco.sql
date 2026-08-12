-- 1. TABELA PAI — sempre primeiro
CREATE TABLE categorias (
    id   SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- 2. TABELA FILHA — referencia a pai pela FK
CREATE TABLE produtos (
    id           SERIAL PRIMARY KEY,
    nome         VARCHAR(100) NOT NULL,
    preco        DECIMAL(10,2) NOT NULL,
    estoque      INTEGER DEFAULT 0,
    categoria_id INTEGER REFERENCES categorias(id)
--              ↑ FK: aponta para o id da tabela categorias
);

-- 3. INSERIR NAS TABELAS — pai antes da filha
INSERT INTO categorias (nome) VALUES
    ('Eletrônicos'),   -- id = 1
    ('Periféricos'),   -- id = 2
    ('Monitores'),     -- id = 3
    ('Áudio');         -- id = 4

-- Verificar os IDs gerados antes de inserir produtos
-- SELECT * FROM categorias;

INSERT INTO produtos (nome, preco, estoque, categoria_id) VALUES
    ('Notebook Gamer',  4999.90, 10, 1),  -- categoria_id 1 = Eletrônicos
    ('Mouse Gamer',      189.90, 35, 2),  -- categoria_id 2 = Periféricos
    ('Teclado Mecânico', 299.90, 20, 2),  -- categoria_id 2 = Periféricos
    ('Monitor 24"',     1299.90,  8, 3),  -- categoria_id 3 = Monitores
    ('Headset USB',      199.90, 18, 4);  -- categoria_id 4 = Áudio
	
	
SELECT * FROM produtos;
	
	
	
