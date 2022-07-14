EXPORT cpgf := Module
	EXPORT layout := Record
		UNSIGNED3 codigo_orgao_superior;
        STRING nome_orgao_superior;
        UNSIGNED3 codigo_orgao;
        STRING nome_orgao;
        UNSIGNED3 codigo_unidade_gestora;
        STRING nome_unidade_gestora;
        UNSIGNED2 ano_extrato;
        UNSIGNED1 mes_extrato;
        STRING14 cpf_portador;
        STRING nome_portador;
        INTEGER7 cnpj_ou_cpf_favorecido;
        STRING nome_favorecido;
        STRING36 transacao;
        STRING10 data_transacao;
        STRING9 valor_transacao;
		END;
	EXPORT File := DATASET('~class::pfbo::cpgf::cpgf_2013_2022.csv', layout, CSV(heading(1)));
END;
