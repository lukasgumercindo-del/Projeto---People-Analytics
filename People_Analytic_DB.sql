CREATE TABLE funcionarios_rh(
	id_funcionario VARCHAR(10) PRIMARY KEY,
	idade INT,
	genero VARCHAR(20),
	departamento VARCHAR (50),
	nivel VARCHAR(20),
	salario NUMERIC(10,2),
	tempo_casa_meses INT,
	nota_satisfacao INT, 
	nota_performance INT,
	status VARCHAR(20)
);

SELECT * FROM funcionarios_rh LIMIT 5;