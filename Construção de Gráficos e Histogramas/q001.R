library(fdth)
dados = read.csv2("q1.csv", sep="," , dec=".")
dados = as.numeric(unlist(dados))

#Número de dados
length(dados)

summary(dados)

#Tabela de distribuição de frequência
tabela = fdt(dados,k=6,breaks="Sturges")
print(tabela,format = TRUE,pattern="%.2f")

#Histograma de dados
hist(dados, main = "HISTOGRAMA DE DADOS", xlab = "ESPESSURAS", ylab = "FREQUÊNCIA")

#Gráfico de setores
tabela = table(dados)
pie(tabela, main = "GRÁFICO DE SETORES")
