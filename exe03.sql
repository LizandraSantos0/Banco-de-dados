CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
   ('Pizzas Salgadas', 'Categoria para pizzas salgadas'),
   ('Pizzas Doces', 'Categoria para pizzas doces');

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, descricao, preco, categoria_id)
VALUES
   ('Marguerita', 'Pizza salgada', 40.00, 1),
   ('Calabresa', 'Pizza salgada', 35.00, 1),
   ('Brigadeiro', 'Pizza doce', 40.00, 2),
   ('Quatro Queijos', 'Pizza salgada', 50.00, 1),
   ('Pepperoni', 'Pizza salgada', 45.00, 1),
   ('Frango com Catupiry', 'Pizza salgada', 55.00, 1),
   ('Mussarela','Pizza salgada', 38.00, 1);
   
SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome AS pizza, tb_pizzas.descricao AS descricao_pizza, tb_pizzas.preco, tb_categorias.nome AS categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Pizzas Doce'