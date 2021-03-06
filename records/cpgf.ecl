EXPORT cpgf := Module
	EXPORT layout := Record
		STRING CODIGO_ORGAO_SUPERIOR;
        STRING NOME_ORGAO_SUPERIOR;
        STRING CODIGO_ORGAO;
        STRING NOME_ORGAO;
        STRING CODIGO_UNIDADE_GESTORA;
        STRING NOME_UNIDADE_GESTORA;
        STRING ANO_EXTRATO;
        STRING MES_EXTRATO;
        STRING CPF_PORTADOR;
        STRING NOME_PORTADOR;
        STRING CNPJ_OU_CPF_FAVORECIDO;
        STRING NOME_FAVORECIDO;
        STRING TRANSACAO;
        STRING DATA_TRANSACAO;
        STRING VALOR_TRANSACAO;
		END;
	EXPORT File := DATASET('~class::pfbo::cpgf::cpgf_2013_2022.csv', layout, CSV(heading(1)));
END;
