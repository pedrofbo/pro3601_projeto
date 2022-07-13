import records;

layout := records.cnpj_estabelecimentos.layout;
estabelecimentos_00 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y0.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_01 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y1.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_02 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y2.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_03 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y3.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_04 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y4.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_05 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y5.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_06 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y6.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_07 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y7.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_08 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y8.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);
estabelecimentos_09 := SORTED(DATASET('~class::pfbo::cnpj::estabelecimentos::k3241.k03200y9.d20514.estabele', layout, CSV), cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial);

estabelecimentos := MERGE(
    estabelecimentos_00, estabelecimentos_01, estabelecimentos_02,
    estabelecimentos_03, estabelecimentos_04, estabelecimentos_05,
    estabelecimentos_06, estabelecimentos_07, estabelecimentos_08,
    estabelecimentos_09,
    SORTED(cnpj_basico, cnpj_ordem, cnpj_dv, matriz_filial)
);
estabelecimentos : PERSIST('~class::pfbo::cnpj::estabelecimentos_concatenated');
