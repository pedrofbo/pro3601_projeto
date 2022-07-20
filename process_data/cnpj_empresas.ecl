import optimized_records, STD;

empresas := optimized_records.cnpj_empresas.File;
layout := optimized_records.cnpj_empresas.layout;

processed_layout := RECORD
    STRING8 cnpj_basico;
    STRING razao_social;
    STRING4 natureza_juridica;
    STRING2 qualificacao_responsavel;
    REAL8 capital_social_empresa;
    STRING2 porte_empresa;
END;

processed_layout MyTransf(layout Le) := TRANSFORM
  SELF.capital_social_empresa := (REAL)STD.Str.FindReplace(Le.capital_social_empresa, ',', '.');
  SELF.porte_empresa := IF(
    Le.porte_empresa <> '',
    Le.porte_empresa,
    '00'
  );
  SELF := Le;
END;

e2 := PROJECT(empresas, MyTransf(LEFT));

e3 := e2(razao_social <> '');
e3 : PERSIST('~class::pfbo::cnpj::empresas_processed');
