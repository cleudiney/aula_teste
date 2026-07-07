-- Portal AMIFRET - estrutura inicial demonstrativa para futura integração MySQL.
-- O protótipo atual é estático; este arquivo serve como referência para evoluir para PHP/MySQL.

CREATE TABLE associados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  razao_social VARCHAR(180) NOT NULL,
  nome_fantasia VARCHAR(140) NOT NULL,
  cnpj VARCHAR(18) NOT NULL UNIQUE,
  responsavel VARCHAR(140) NOT NULL,
  email VARCHAR(160) NOT NULL,
  telefone VARCHAR(30),
  whatsapp VARCHAR(30),
  cidade VARCHAR(100) NOT NULL,
  regiao VARCHAR(100) NOT NULL,
  site VARCHAR(180),
  tipo_servico VARCHAR(120),
  status ENUM('ativo','pendente','suspenso') DEFAULT 'pendente',
  aparece_vitrine TINYINT(1) DEFAULT 1,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE documentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(180) NOT NULL,
  categoria VARCHAR(100) NOT NULL,
  arquivo_url VARCHAR(255),
  visibilidade ENUM('publico','associados','diretoria') DEFAULT 'associados',
  publicado_em DATE NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE comunicados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(180) NOT NULL,
  texto TEXT NOT NULL,
  publico_alvo ENUM('todos','ativos','pendentes','diretoria') DEFAULT 'todos',
  publicado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE mensalidades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  associado_id INT NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  vencimento DATE NOT NULL,
  status ENUM('em_aberto','pago','atrasado') DEFAULT 'em_aberto',
  FOREIGN KEY (associado_id) REFERENCES associados(id)
);
