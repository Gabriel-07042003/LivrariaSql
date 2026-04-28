
CREATE DATABASE Livraria
GO
USE Livraria 

CREATE TABLE Livro (
codigoL			INT				NOT NULL	IDENTITY(100001, 100),
nome		VARCHAR(40)		NOT NULL	UNIQUE,
Lingua		VARCHAR(10)	NOT NULL DEFAULT('PT-BR'),
Ano			Int NOT NULL Check(Ano > 1990)

PRIMARY KEY (codigoL)
)
GO
CREATE TABLE Editora (
codigoE		INT				NOT NULL	IDENTITY(491, 16),
nome		VARCHAR(50)		NOT NULL	UNIQUE,
telefone	varCHAR(10) NOT NULL check(telefone=10),
Logradouro_Endereco Varchar(200) NOT NULL ,
Numero_Endereco		int	NOT NULL check(Numero_Endereco>0) ,
CEP_Endereco		char(8)		NOT NULL,	
Complemento_Endereco		Varchar(255) NOT NULL

PRIMARY KEY (codigoE)
FOREIGN KEY () REFERENCES times(id),

)
CREATE TABLE Edicao (
ISBN			char(13)				NOT NULL	,
nome		VARCHAR(40)		NOT NULL	UNIQUE,
N_PAG	Int	NOT NULL	check(N_PAG >=15),	
Preco		decimal(4,2)			Not NULL  check(Preco>0),
Ano			Int			NOT NULL check(Ano >=1993),
Qtd_Estoque  Int		Not null 

PRIMARY KEY (ISBN)
)

CREATE TABLE Autor (
codigoID			INT				NOT NULL	IDENTITY(2351, 1),
nome		VARCHAR(40)		NOT NULL	UNIQUE,
dt_nasc		date 	NOT NULL,
Pais_NASC varchar (50) NOT NULL,
Biografia varchar(255) Not null

PRIMARY KEY (codigoID)
Foreign key(codigoID) References (codigo)
)

 
