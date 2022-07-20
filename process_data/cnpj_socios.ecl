import optimized_records, STD;

socios := optimized_records.cnpj_socios.File;
layout := optimized_records.cnpj_socios.layout;

processed_layout := RECORD
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

processed_layout MyTransf(layout Le) := TRANSFORM
    SELF.cnpj_cpf_socio := STD.Str.FindReplace(Le.cnpj_cpf_socio, '*', '');
    rep := STD.Str.FindReplace(Le.representante_legal, '*', '');
    SELF.representante_legal := IF(
        rep <> '000000',
        rep,
        ''
    );
    SELF := Le;
END;

c2 := PROJECT(socios, MyTransf(LEFT));
c2 : PERSIST('~class::pfbo::cnpj::socios_processed');
