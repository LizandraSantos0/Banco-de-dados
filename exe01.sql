CREATE TABLE colaboradores (
    id bigint auto_increment primary key,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    salario decimal(10, 2) not null,
    cargo varchar(255) not null
);
INSERT INTO colaboradores (nome, sobrenome, salario, cargo)
VALUES
    ('Joana', 'Silva', 2500.00, 'Analista');
    
    INSERT INTO colaboradores (nome, sobrenome, salario, cargo)
VALUES
    ('Maria', 'Sousa', 2200.00, 'Gerente');
    
    INSERT INTO colaboradores (nome, sobrenome, salario, cargo)
VALUES
    ('Pedro', 'Araujo', 1900.00, 'Assistente');
    
    INSERT INTO colaboradores (nome, sobrenome, salario, cargo)
VALUES
    ('Ana', 'Santos', 2700.00, 'Desenvolvedora');
    
    INSERT INTO colaboradores (nome, sobrenome, salario, cargo)
VALUES
    ('João', 'Costa', 1800.00, 'Estagiario');
    
    SELECT * FROM colaboradores WHERE salario > 2000;
    
    SELECT * FROM colaboradores WHERE salario < 2000;
    
    UPDATE colaboradores SET salario = 2.000 WHERE id = 3;