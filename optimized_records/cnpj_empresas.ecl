EXPORT cnpj_empresas := Module
	EXPORT layout := Record
		STRING8 cnpj_basico;
        STRING razao_social;
        STRING4 natureza_juridica;
        STRING2 qualificacao_responsavel;
        STRING15 capital_social_empresa;
        STRING2 porte_empresa;
        STRING ente_federativo_responsavel;
	END;
END;
