install.packages("basedosdados")
library("basedosdados")

# Defina o seu projeto no Google Cloud
set_billing_id("95803469120")

# Para carregar o dado direto no R
query <- bdplyr("br_mapbiomas_estatisticas.classe")
df_classe <- bd_collect(query)
write.table(df_classe, "~/IntroR_NUBEA/Dados/df_classe.csv")

query <- bdplyr("br_mapbiomas_estatisticas.cobertura_municipio_classe")
df_municipio_classe <- bd_collect(query)
write.table(df_municipio_classe, "~/IntroR_NUBEA/Dados/df_municipio_classe.csv")

query <- bdplyr("br_mapbiomas_estatisticas.cobertura_uf_classe")
df_cobertura_uf_classe <- bd_collect(query)
write.table(df_cobertura_uf_classe, "~/IntroR_NUBEA/Dados/df_cobertura_uf_classe.csv")

query <- bdplyr("br_mapbiomas_estatisticas.transicao_municipio_de_para_anual")
df_transicao_municipio_de_para_anual <- bd_collect(query)
write.table(df_transicao_municipio_de_para_anual, "~/IntroR_NUBEA/Dados/df_transicao_municipio_de_para_anual.csv")

query <- bdplyr("br_mapbiomas_estatisticas.transicao_municipio_de_para_decenal")
df_transicao_municipio_de_para_decenal <- bd_collect(query)
write.table(df_transicao_municipio_de_para_decenal, "~/IntroR_NUBEA/Dados/df_transicao_municipio_de_para_decenal.csv")

query <- bdplyr("br_mapbiomas_estatisticas.transicao_municipio_de_para_quinquenal")
df_transicao_municipio_de_para_quinquenal <- bd_collect(query)
write.table(df_transicao_municipio_de_para_quinquenal, "~/IntroR_NUBEA/Dados/df_transicao_municipio_de_para_quinquenal.csv")

query <- bdplyr("br_mapbiomas_estatisticas.transicao_uf_de_para_anual")
df_transicao_uf_de_para_anual <- bd_collect(query)
write.table(df_transicao_uf_de_para_anual, "~/IntroR_NUBEA/Dados/df_transicao_uf_de_para_anual.csv")

