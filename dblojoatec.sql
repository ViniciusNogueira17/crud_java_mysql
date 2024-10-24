CREATE DATABASE dblojoatec;
USE dblojoatec;

CREATE TABLE usuarios(
   iduser INT PRIMARY KEY AUTO_INCREMENT,
   usuario VARCHAR(50) NOT NULL,
   fone VARCHAR(15),
   login VARCHAR(15) NOT NULL UNIQUE,
   senha VARCHAR(15) NOT NULL
   );
  
CREATE TABLE clientes(
	idcli INT PRIMARY KEY AUTO_INCREMENT,
    nomecli VARCHAR(50) NOT NULL,
    endcli VARCHAR(100),
    fonecli VARCHAR(15) NOT NULL,
    emailcli VARCHAR(50)
    );
    
CREATE TABLE ordem_servico(
	os INT PRIMARY KEY AUTO_INCREMENT,
    data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    equipamento VARCHAR(150) NOT NULL,
    defeito VARCHAR(150) NOT NULL,
    servico VARCHAR(150),
    tecnico VARCHAR(30),
    valor DECIMAL(10,2),
    idcli INT NOT NULL,
    FOREIGN KEY(idcli) references clientes(idcli)
    );
 
 
 
 INSERT INTO usuarios (usuario, fone, login, senha) VALUES 
('Carlos Silva', '11987654321', 'carlos.s', 'senha123'),
('Mariana Souza', '21987654321', 'mariana.s', 'senha456'),
('João Oliveira', '31987654321', 'joao.o', 'senha789'),
('Ana Lima', '41987654321', 'ana.l', 'senha321'),
('Felipe Santos', '51987654321', 'felipe.s', 'senha654'),
('Roberta Alves', '61987654321', 'roberta.a', 'senha987'),
('Bruno Costa', '71987654321', 'bruno.c', 'senhaabc'),
('Fernanda Rocha', '81987654321', 'fernanda.r', 'senha1234'),
('Gustavo Pereira', '91987654321', 'gustavo.p', 'senha4321'),
('Larissa Mendes', '10198765432', 'larissa.m', 'senhaxyz');

INSERT INTO clientes (nomecli, endcli, fonecli, emailcli) VALUES
('José Almeida', 'Rua das Flores, 123', '11987654321', 'jose.almeida@email.com'),
('Maria Santos', 'Av. Paulista, 456', '21987654321', 'maria.santos@email.com'),
('Pedro Souza', 'Rua dos Lírios, 789', '31987654321', 'pedro.souza@email.com'),
('Ana Costa', 'Rua das Acácias, 101', '41987654321', 'ana.costa@email.com'),
('Lucas Oliveira', 'Av. Brasil, 202', '51987654321', 'lucas.oliveira@email.com'),
('Mariana Lima', 'Rua das Palmeiras, 303', '61987654321', 'mariana.lima@email.com'),
('Fernando Pereira', 'Av. dos Ipês, 404', '71987654321', 'fernando.pereira@email.com'),
('Larissa Martins', 'Rua das Magnólias, 505', '81987654321', 'larissa.martins@email.com'),
('Gustavo Carvalho', 'Av. Independência, 606', '91987654321', 'gustavo.carvalho@email.com'),
('Carla Nunes', 'Rua das Hortênsias, 707', '10198765432', 'carla.nunes@email.com');


INSERT INTO ordem_servico (equipamento, defeito, servico, tecnico, valor, idcli) VALUES
('Notebook Dell Inspiron', 'Não liga', 'Troca da fonte', 'Carlos Silva', 350.00, 1),
('Smartphone Samsung Galaxy S10', 'Tela trincada', 'Troca da tela', 'Mariana Souza', 450.00, 2),
('Impressora HP Deskjet 2136', 'Erro de papel atolado', 'Limpeza interna', 'João Oliveira', 120.00, 3),
('PC Gamer', 'Superaquecimento', 'Troca de cooler', 'Ana Lima', 250.00, 4),
('Notebook Lenovo Ideapad 320', 'Teclado não responde', 'Troca de teclado', 'Felipe Santos', 180.00, 5),
('Tablet iPad Pro', 'Bateria não carrega', 'Troca de bateria', 'Roberta Alves', 500.00, 6),
('Smartphone iPhone 12', 'Botão home não funciona', 'Substituição do botão', 'Bruno Costa', 300.00, 7),
('Smart TV LG 50"', 'Não conecta ao Wi-Fi', 'Atualização de firmware', 'Fernanda Rocha', 200.00, 8),
('PlayStation 5', 'Travamento frequente', 'Substituição do SSD', 'Gustavo Pereira', 600.00, 9),
('Notebook Acer Aspire 5', 'Desliga sozinho', 'Troca de placa-mãe', 'Larissa Mendes', 800.00, 10);


show tables;
select * from clientes;
select * from usuarios;
select * from ordem_servico;

   