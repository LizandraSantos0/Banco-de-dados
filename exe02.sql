CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    cor VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL
);
 
INSERT INTO produtos (nome, preco, estoque, cor, marca)
VALUES
   ('Tenis', 400.00, 4, 'Preto', 'Adidas');

INSERT INTO produtos (nome, preco, estoque, cor, marca)
VALUES
    ('Tenis', 1800.00, 10, 'Rosa', 'Gucci');
    
INSERT INTO produtos (nome, preco, estoque, cor, marca)
VALUES
    ('Bota', 250, 5, 'Branco', 'Louie');
    
INSERT INTO produtos (nome, preco, estoque, cor, marca)
VALUES
    ('Sapatilha', 100, 7, 'Azul', 'Moleca');
    
INSERT INTO produtos (nome, preco, estoque, cor, marca)
VALUES
    ('Tenis', 300, 10, 'Preto', 'Nike');

SELECT * FROM produtos WHERE preco > 500;
    
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 800 WHERE id = 3;