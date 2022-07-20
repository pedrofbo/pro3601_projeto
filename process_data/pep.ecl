import optimized_records, STD;

pep := optimized_records.pep.File;
layout := optimized_records.pep.layout;

processed_layout := RECORD
    STRING6 cpf;
    STRING nome_pep;
    STRING6 sigla_funcao;
    STRING descricao_funcao;
    STRING nome_orgao;
    STRING8 data_inicio_exercicio;
    STRING8 data_fim_exercicio;
    STRING8 data_fim_carencia;
END;

processed_layout MyTransf(layout Le) := TRANSFORM
    SELF.cpf := Le.cpf[5..7] + Le.cpf[9..11];
    SELF.data_inicio_exercicio := (STRING8)STD.Date.FromStringToDate(Le.data_inicio_exercicio[1..10], '%d/%m/%Y');
    SELF.data_fim_exercicio := (STRING8)STD.Date.FromStringToDate(Le.data_fim_exercicio[1..10], '%d/%m/%Y');
    SELF.data_fim_carencia := (STRING8)STD.Date.FromStringToDate(Le.data_fim_carencia[1..10], '%d/%m/%Y');
    SELF := Le;
END;

c2 := PROJECT(pep, MyTransf(LEFT));
c2 : PERSIST('~class::pfbo::pep_processed');
