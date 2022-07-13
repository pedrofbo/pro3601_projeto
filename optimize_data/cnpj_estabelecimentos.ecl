IMPORT records, STD;

layout := records.cnpj_estabelecimentos.layout;
estabelecimentos := DATASET('~class::pfbo::cnpj::estabelecimentos_concatenated__p2677556529', layout, FLAT);

profileResults := STD.DataPatterns.Profile(estabelecimentos);
bestrecord     := STD.DataPatterns.BestRecordStructure(estabelecimentos);

OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
