dados = read.csv2("a3 q3.csv", header = TRUE, sep = ",", dec = ".")

mortalidade = dados$taxa.de.mort..infantil
alfabetizacao = dados$taxa.de.alfabetizacao
pop1000 = dados$populacao..em.1000.hab..
cidades = dados$municipio

plot(mortalidade, alfabetizacao, pch = 19, main = "MORTALIDADE INFANTIL X TAXA DE ALFABETIZAÇÃO", col = "darkblue")

correlacao = cor(mortalidade, alfabetizacao)
correlacao

barplot(pop1000, main = "População (em 1000 habitantes) por município", names.arg = cidades, col = "darkblue")
