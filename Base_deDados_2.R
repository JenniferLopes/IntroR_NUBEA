install.packages("basedosdados")
library("basedosdados")

# Defina o seu projeto no Google Cloud
set_billing_id("95803469120")

# Para carregar o dado direto no R
query <- bdplyr("br_mapbiomas_estatisticas.classe")
df_classe <- bd_collect(query)

# Para carregar o dado direto no R
query <- bdplyr("br_mapbiomas_estatisticas.cobertura_municipio_classe")
df_municipio_classe <- bd_collect(query)
