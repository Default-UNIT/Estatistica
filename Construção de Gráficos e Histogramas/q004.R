dados = read.csv2("q4.csv", header = TRUE, sep = ";", dec = ".")
dados = as.data.frame(dados)
dados
altura = as.numeric(sub(",",".", dados[,2], fixed = TRUE))
barplot(altura, xlab = "Estados", ylab = "Proporção da população urbana", main = "PROPORÇÃO DA POPULAÇÃO URBANA EM 2014 POR ESTADO", names.arg = dados[,1], col = "darkred")
