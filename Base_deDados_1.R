install.packages("basedosdados")
library("basedosdados")

# Defina o seu projeto no Google Cloud
basedosdados::set_billing_id("95803469120")

# Para carregar o dado direto no R
query <- bdplyr("br_mma_extincao.fauna_ameacada")
df <- bd_collect(query)

write.table(df, "~/IntroR_NUBEA/Dados/df.csv")