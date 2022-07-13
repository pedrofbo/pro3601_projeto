IMPORT records, STD;

layout := records.cnpj_empresas.layout;
empresas := DATASET('~class::pfbo::cnpj::empresas_concatenated__p2963707102', layout, FLAT);

profileResults := STD.DataPatterns.Profile(empresas);
bestrecord     := STD.DataPatterns.BestRecordStructure(empresas);

OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
