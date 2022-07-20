import optimized_records, STD;

cpgf := optimized_records.cpgf.File;
layout := optimized_records.cpgf.layout;

processed_layout := RECORD
    UNSIGNED3 codigo_orgao_superior;
    STRING nome_orgao_superior;
    UNSIGNED3 codigo_orgao_subordinado;
    STRING nome_orgao_subordinado;
    UNSIGNED3 codigo_unidade_gestora;
    STRING nome_unidade_gestora;
    UNSIGNED2 ano_extrato;
    UNSIGNED1 mes_extrato;
    STRING6 cpf_portador;
    STRING nome_portador;
    INTEGER7 cnpj_ou_cpf_favorecido;
    STRING nome_favorecido;
    STRING36 transacao;
    STRING10 data_transacao;
    REAL valor_transacao;
END;

processed_layout MyTransf(layout Le) := TRANSFORM
    SELF.cpf_portador := Le.cpf_portador[5..7] + Le.cpf_portador[9..11];
    SELF.data_transacao := (STRING8)STD.Date.FromStringToDate(Le.data_transacao[1..10], '%d/%m/%Y');
    SELF.valor_transacao := (REAL)STD.Str.FindReplace(Le.valor_transacao, ',', '.');
    SELF := Le;
END;

c2 := PROJECT(cpgf, MyTransf(LEFT));
c3 := c2(cnpj_ou_cpf_favorecido >= 0);
c4 := c3(cpf_portador <> '');
c4 : PERSIST('~class::pfbo::cpgf_processed');
