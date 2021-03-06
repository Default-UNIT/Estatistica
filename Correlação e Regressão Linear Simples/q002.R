dados = read.csv2("a3 q2.csv", header = TRUE, sep = ",", dec = ".")
dados

renda = dados$Renda.Familiar..X.
gasto = dados$Gasto.com.AlimentaÃ.Ã.o..Y.
gasto = as.numeric(sub(",", ".", gasto, fixed = TRUE))

correlacao = cor(renda, gasto)
correlacao

regressao = lm(gasto ~ renda)
regressao

plot(renda, gasto, pch = 19, main = "RENDA X GASTO COM ALIMENTAÇÃO", col = "darkblue")
abline(regressao, col = "darkred")

gastofamiliar = 8.6918 + 0.2044*(288)
gastofamiliar
