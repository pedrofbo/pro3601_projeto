IMPORT records, STD;

cpgf := records.cpgf.File;

profileResults := STD.DataPatterns.Profile(cpgf);
bestrecord     := STD.DataPatterns.BestRecordStructure(cpgf);

OUTPUT(profileResults, ALL, NAMED('profileResults'));
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));
