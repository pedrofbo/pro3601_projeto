EXPORT pep := Module
	EXPORT layout := Record
		STRING CPF;
        STRING Nome_PEP;
        STRING Sigla_Funcao;
        STRING Descricao_Funcao;
        STRING Nivel_Funcao;
        STRING Nome_Orgao;
        STRING Data_Inicio_Exercicio;
        STRING Data_Fim_Exercicio;
        STRING Data_Fim_Carencia;
		END;
	EXPORT File := DATASET('~class::project::pep::202205_pep.csv', layout, CSV(heading(1)));
END;
