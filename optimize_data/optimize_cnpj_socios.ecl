IMPORT records, STD;

layout := records.cnpj_socios.layout;
socios := DATASET('~class::pfbo::cnpj::socios_concatenated__p3503854759', layout, FLAT);

profileResults := STD.DataPatterns.Profile(socios);
bestrecord     := STD.DataPatterns.BestRecordStructure(socios);

OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
