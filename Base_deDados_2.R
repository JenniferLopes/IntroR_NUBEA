install.packages("basedosdados")
library("basedosdados")

# Defina o seu projeto no Google Cloud
set_billing_id("95803469120")

# Para carregar o dado direto no R
query <- bdplyr("br_mapbiomas_estatisticas.classe")
df <- bd_collect(query)
