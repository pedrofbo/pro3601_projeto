import records;

layout := records.cnpj_socios.layout;
socios_00 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y0.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_01 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y1.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_02 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y2.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_03 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y3.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_04 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y4.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_05 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y5.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_06 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y6.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_07 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y7.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_08 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y8.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);
socios_09 := SORTED(DATASET('~class::pfbo::cnpj::socios::k3241.k03200y9.d20514.sociocsv', layout, CSV), cnpj_basico, cnpj_cpf_socio, identificador_socio);

socios := MERGE(
    socios_00, socios_01, socios_02,
    socios_03, socios_04, socios_05,
    socios_06, socios_07, socios_08,
    socios_09,
    SORTED(cnpj_basico, cnpj_cpf_socio, identificador_socio)
);
socios : PERSIST('~class::pfbo::cnpj::socios_concatenated');
