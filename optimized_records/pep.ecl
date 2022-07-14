EXPORT pep := Module
	EXPORT layout := Record
		STRING14 cpf;
        STRING nome_pep;
        STRING6 sigla_funcao;
        STRING descricao_funcao;
        STRING4 nivel_funcao;
        STRING nome_orgao;
        STRING10 data_inicio_exercicio;
        STRING13 data_fim_exercicio;
        STRING13 data_fim_carencia;
		END;
	EXPORT File := DATASET('~class::pfbo::pep::202206_pep.csv', layout, CSV(heading(1)));
END;
