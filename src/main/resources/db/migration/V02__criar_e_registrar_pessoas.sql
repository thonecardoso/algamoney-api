CREATE TABLE pessoa(
    codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    ativo BOOLEAN NOT NULL,

    logradouro VARCHAR(50),
    numero VARCHAR(50),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cep VARCHAR(10),
    cidade VARCHAR(50),
    estado VARCHAR(50)


)ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) VALUES
('João Carlos', true, 'Rua das Palmeiras', '87', 'Ap 302', 'Primavera', '38607-090', 'Paracatu','Minas Gerais'),
('Antônio Eduardo', false, 'Rua Cristal', '45', 'CASA', 'Amoreiras', '38634-090', 'Paracatu','Minas Gerais'),
('Maria Rogéria de Assis', true, 'Av das Flores', '87', 'Fundos', 'Cidade Nova', '38607-090', 'Paracatu','Minas Gerais'),
('Mônica Santana', true, 'Av Universitária', '87', 'Casa B', 'Setor Central', '38607-090', 'Domiciano Ribeiro','Goias'),
('Rafael Meneguete', true, 'Rua das Mansoes', '87', 'Portão Azul', 'Centro', '38607-090', 'Cidade de Deus','Rio de Janeiro'),
('Luis Eduardo Magalhães', false, 'Beco das Oliveiras', '87', 'Corredor', 'Principal', '38607-090', 'Recando Encantado','Paraiba'),
('Saimon Ribeiro', true, 'Rua Jose Maria', '87', 'Sobrado de Esquina', 'Main', '38607-090', 'Indianopolis','Rio de Janeiro'),
('Tadeu Augusto', false, 'Rua Alcantara', '87', 'B', 'Kotlin', '38607-090', 'Catalão','Goias'),
('Alex de Noronha', true, 'Rua Albernaz Santana', '87', 'A', 'Flutter', '38607-090', 'Unaí','Minas Gerais'),
('Marta Helena', true, 'Rua Tupis', '87', 'cs', 'Java', '38607-090', 'Sobradinho','Brasilia'),
('Simone de Olinda', false, 'Rua do Bejo', '87', 'Janela Aberta', 'Javascript', '38607-090', 'Vaoparaiso','Goias'),
('Herinete Messias', true, 'Rua Catalizadora', '87', 'Ao lado Supermercado', 'Dell', '38607-090', 'Cristalina','Goias'),
('Karol com K', true, 'Rua dos Finalmentes', '87', 'Fundos com a Igreja', 'Apple', '38607-090', 'João Pinheiro','Minas Gerais');
