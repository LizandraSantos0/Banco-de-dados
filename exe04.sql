CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome, descricao)
VALUES
   ('Remedio', 'Medicamento'),
   ('Higiene Pessoal', 'Produto de higiene');

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria_id)
VALUES
   ('Paracetamol', 'Medicamento', 10.00, 1),
   ('Dipirona', 'Medicamento', 8.00, 1),
   ('Sabonete Líquido', 'Produto de higiene pessoal', 5.00, 2),
   ('Shampoo', 'Produto de higiene pessoal', 12.00, 2),
   ('Condicionador', 'Produto de higiene pessoal', 12.00, 2),
   ('Creme Dental', 'Produto de higiene pessoal', 7.00, 2),
   ('Desodorante', 'Produto de higiene pessoal', 8.00, 2),
   ('Fralda Descartável', 'Produto de higiene pessoal', 20.00, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%S%';

SELECT tb_produtos.nome AS produto, tb_produtos.descricao AS descricao_produto, tb_produtos.preco, tb_categorias.nome AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Medicamento'