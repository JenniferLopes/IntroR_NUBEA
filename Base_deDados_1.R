install.packages("basedosdados")
library("basedosdados")

# Defina o seu projeto no Google Cloud
basedosdados::set_billing_id("95803469120")

# Para carregar o dado direto no R
query <- basedosdados::bdplyr("br_mma_extincao.fauna_ameacada")
df_fauna_ameacada <- bd_collect(query)
utils::write.csv(df_fauna_ameacada, "/Área de Trabalho/Projetos R/IntroR_NUBEA/Dados")

# Para carregar o dado direto no R
query <- bdplyr("br_mma_extincao.flora_ameacada")
df_flora_ameacada <- bd_collect(query)
utils::write.csv(df_flora_ameacada, "~/IntroR_NUBEA/Dados/df_flora_ameacada.csv")


