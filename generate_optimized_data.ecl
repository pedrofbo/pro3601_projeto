import optimized_records;

layout_cnpj_empresas := optimized_records.cnpj_empresas.layout;
empresas := DATASET('~class::pfbo::cnpj::empresas_concatenated__p2963707102', layout_cnpj_empresas, FLAT);
empresas : PERSIST('~class::pfbo::cnpj::empresas_optimized');

layout_cnpj_estabelecimentos := optimized_records.cnpj_estabelecimentos.layout;
estabelecimentos := DATASET('~class::pfbo::cnpj::estabelecimentos_concatenated__p2677556529', layout_cnpj_estabelecimentos, FLAT);
estabelecimentos : PERSIST('~class::pfbo::cnpj::estabelecimentos_optimized');

layout_cnpj_socios := optimized_records.cnpj_socios.layout;
socios := DATASET('~class::pfbo::cnpj::socios_concatenated__p3503854759', layout_cnpj_estabelecimentos, FLAT);
socios : PERSIST('~class::pfbo::cnpj::socios_optimized');

layout_cpgf := optimized_records.cpgf.layout;
cpgf := DATASET('~class::pfbo::cpgf::cpgf_2013_2022.csv', layout_cpgf, CSV(heading(1)));
cpgf : PERSIST('~class::pfbo::cpgf_optimized');

layout_pep := optimized_records.pep.layout;
pep := DATASET('~class::pfbo::pep::202206_pep.csv', layout_pep, CSV(heading(1)));
pep : PERSIST('~class::pfbo::pep_optimized');
