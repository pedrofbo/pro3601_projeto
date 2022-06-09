EXPORT cnpj_estabelecimentos := Module
	EXPORT layout := Record
		STRING cnpj_basico;
        STRING cnpj_ordem;
        STRING cnpj_dv;
        STRING matriz_filial;
        STRING nome_fantasia;
        STRING situacao_cadastral;
        STRING data_situacao_cadastral;
		STRING motivo_situacao_cadastral;
        STRING nome_cidade_exterior;
        STRING pais;
        STRING data_inicio_atividade;
        STRING cnae_fiscal_principal;
        STRING cnae_fiscal_secundaria;
        STRING tipo_logradouro;
		STRING logradouro;
        STRING numero;
        STRING complemento;
        STRING bairro;
        STRING cep;
        STRING uf;
        STRING municipio;
		STRING ddd_1;
        STRING telefone_1;
        STRING ddd_2;
        STRING telefone_2;
        STRING ddd_fax;
        STRING fax_1;
        STRING correio_eletronico;
        STRING situacao_especial;
        STRING data_situacao_especial;
		END;
	EXPORT File := DATASET('~class::project::cnpj::estabelecimentos::k3241.k03200y0.d20514.estabele', layout, CSV);
END;