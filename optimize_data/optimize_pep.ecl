IMPORT records, STD;

pep := records.pep.File;

profileResults := STD.DataPatterns.Profile(pep);
bestrecord     := STD.DataPatterns.BestRecordStructure(pep);

OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
