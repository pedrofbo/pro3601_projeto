EXPORT cnpj_empresas := Module
	EXPORT layout := Record
		STRING cnpj_basico;
        STRING razao_social;
        STRING natureza_juridica;
        STRING qualificacao_responsavel;
        STRING capital_social_empresa;
        STRING porte_empresa;
        STRING ente_federativo_responsavel;
	END;
END;
