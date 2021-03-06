#leitura de arquivos
dados = read.csv2("custodeensino.csv",header=TRUE, sep=";" , dec=".")
dados = as.numeric(unlist(dados))

#1º questão
#Média
mean(dados)
#Desvio Padrão
sd(dados)
#Mediana
median(dados)

#2º questão
#Primeiro Quantil
quantile(dados, probs = 0.25)
#Segundo Quantil
quantile(dados, probs = 0.5)
#Terceiro Quantil
quantile(dados, probs = 0.75)

#3º questão
#Boxplot
boxplot(dados, col="pink")

#4º questão
#Distribuição de Frequência
dadostable = seq(19, 33, 2)
classes = c("19-21", "21-23", "23-25", "25-27", "27-29", "29-31", "31-33")
tabela = table(cut(dados,breaks=dadostable,right=FALSE,labels=classes))
tabela

#5º questão
#Tabela Frequência Relativa
prop.table(tabela)
