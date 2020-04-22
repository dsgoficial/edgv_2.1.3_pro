CREATE TABLE edgv.aux_moldura_edicao_a(
	 id serial NOT NULL,
	 nome varchar(255) NOT NULL,
     mi varchar(255),
     inom varchar(255),
	 denominador_escala varchar(255) NOT NULL,
	 geom geometry(MultiPolygon, 31981),
	 CONSTRAINT aux_moldura_edicao_a_pk PRIMARY KEY (id)
	 WITH (FILLFACTOR = 80)
);
CREATE INDEX aux_moldura_edicao_a_geom ON edgv.aux_moldura_edicao_a USING gist (geom);

ALTER TABLE edgv.aux_moldura_edicao_a OWNER TO postgres;