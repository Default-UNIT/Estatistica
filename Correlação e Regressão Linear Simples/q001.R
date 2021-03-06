dados = read.csv2("a3 q1.csv", header = TRUE, sep = ",", dec = ".")
dados

matematica = dados$X
calculo = dados$Y

correlacao = cor(matematica, calculo)
correlacao

regressao = lm(calculo ~ matematica)
regressao

plot(matematica, calculo, pch = 19, main = "Vestibular x Cálculo", col = "darkblue")
abline(regressao, col = "darkred")

notafinal = 87.14976 + 0.02194*(77)
notafinal
