-- DDL for final project 

CREATE TABLE IF NOT EXISTS gene_info (
	PRIMARY KEY (gene_id, gene_sym),
	gene_id INT(50) NOT NULL,
	gene_sym VARCHAR(50) NOT NULL,
	gene_status VARCHAR(50) NOT NULL,
	gene_uniprot VARCHAR(100) NOT NULL,
	gene_loc VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS gene_alias (
	FOREIGN KEY (gene_id) REFERENCES gene_info (gene_id),
	gene_id INT(50) NOT NULL,
	alias VARCHAR(250) NOT NULL
);

CREATE TABLE IF NOT EXISTS gene_desc (
	FOREIGN KEY (gene_id) REFERENCES gene_info (gene_id),
	gene_id INT(50) NOT NULL,
	gene_type VARCHAR(100) NOT NULL,
	gene_sum VARCHAR(3000) NOT NULL
);
