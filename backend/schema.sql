create table usuarios (
	id serial primary key,
  	nome text not null,
  	email text not null unique,
  	senha text not null
);

create table categorias (
	id serial primary key,
  	descricao text
);

create table transacoes (
	id serial primary key,
  	descricao text,
  	valor numeric not null,
  	data timestamp not null,
  	categoria_id integer not null,
  	usuario_id integer not null,
  	tipo text not null,
  	foreign key (categoria_id) references categorias(id),
  	foreign key (usuario_id) references usuarios(id)
);


insert into categorias (descricao) values
('Alimentação'),
('Assinaturas e Serviços'),
('Casa'),
('Mercado'),
('Cuidados Pessoais'),
('Educação'),
('Família'),
('Lazer'),
('Pets'),
('Presentes'),
('Roupas'),
('Saúde'),
('Transportes'),
('Salário'),
('Vendas'),
('Outras receitas'),
('Outras despesas');