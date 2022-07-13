import records;

layout := records.cnpj_empresas.layout;
empresas_00 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y0.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_01 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y1.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_02 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y2.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_03 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y3.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_04 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y4.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_05 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y5.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_06 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y6.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_07 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y7.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_08 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y8.d20514.emprecsv', layout, CSV), cnpj_basico);
empresas_09 := SORTED(DATASET('~class::pfbo::cnpj::empresas::k3241.k03200y9.d20514.emprecsv', layout, CSV), cnpj_basico);

empresas := MERGE(
    empresas_00, empresas_01, empresas_02,
    empresas_03, empresas_04, empresas_05,
    empresas_06, empresas_07, empresas_08,
    empresas_09,
    SORTED(cnpj_basico)
);
empresas : PERSIST('~class::pfbo::cnpj::empresas_concatenated');
