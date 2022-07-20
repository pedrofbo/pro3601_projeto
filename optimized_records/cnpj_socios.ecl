EXPORT cnpj_socios := Module
	EXPORT layout := Record
		STRING8 cnpj_basico;
        UNSIGNED1 identificador_socio;
        STRING nome_socio;
        STRING14 cnpj_cpf_socio;
        STRING2 qualificacao_socio;
        STRING8 data_entrada_sociedade;
        STRING3 pais;
        STRING11 representante_legal;
        STRING nome_representante;
        STRING2 qualificacao_representante;
        UNSIGNED1 faixa_etaria;
	END;
    EXPORT File := DATASET('~class::pfbo::cnpj::socios_optimized__p64863730', layout, FLAT);
END;
