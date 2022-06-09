EXPORT cnpj_socios := Module
	EXPORT layout := Record
		STRING cnpj_basico;
        STRING identificador_socio;
        STRING nome_socio;
        STRING cnpj_cpf_socio;
        STRING qualificacao_socio;
        STRING data_entrada_sociedade;
        STRING pais;
		STRING representante_legal;
        STRING nome_representante;
        STRING qualificacao_representante;
        STRING faixa_etaria;
		END;
	EXPORT File := DATASET('~class::project::cnpj::socios::k3241.k03200y0.d20514.sociocsv', layout, CSV);
END;
