library(fdth)
dados = read.csv2("atividade2.csv",header=TRUE, sep=";" , dec=".")
dados = as.numeric(unlist(dados))

#Número de dados
length(dados)

summary(dados)

#Tabela de distribuição de frequência
tabela = fdt(dados,k=13,breaks="Sturges")
print(tabela,format = TRUE,pattern="%.2f")

#Histograma de dados
hist(dados, main = "HISTOGRAMA DE DADOS", xlab = "AVALIAÇÃO DO CURSO", ylab = "FREQUÊNCIA")

#Gráfico de setores por número
tabela = table(dados)
pie(tabela)

#Gráfico de setores dos limites
cortes = c(8.60, 7.80, 8.76, 8.28, 7.32, 8.76, 7.44, 7.68, 6.12, 7.88,7.20, 7.64, 6.52
)
classes = c("0.00 - 7.77", "7.77 - 15.50", "15.50 - 23.30", "23.30 - 31.10", "31.10 - 38.80", "38.80 - 46.60", "46.60 - 54.40", "54.40 - 62.20", "62.20 - 69.90", "69.90 - 77.70", "77.70 - 85.50", "85.50 - 93.20", "93.20 - 101.00")
pie(cortes, labels = classes, main = "GRÁFICO DE SETORES")
