install.packages("basedosdados")
library("basedosdados")

# Defina o seu projeto no Google Cloud
basedosdados::set_billing_id("<YOUR_PROJECT_ID>")

# Para carregar o dado direto no R
query <- bdplyr("br_mma_extincao.fauna_ameacada")
df <- bd_collect(query)