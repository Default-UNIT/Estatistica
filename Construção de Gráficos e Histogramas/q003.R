dados = read.csv2("q3.csv", header = TRUE, sep = ";", dec = ".")
dados = as.data.frame(dados)
dados = dados[-7,]
altura = as.numeric(sub(",", ".", dados[,2], fixed = TRUE))
barplot(altura, xlab = "Regiões", ylab = "Proporção da população urbana", main = "PROPORÇÃO DA POPULAÇÃO URBANA EM 2014 POR REGIÃO", names.arg = dados[,1], col = "darkred")
