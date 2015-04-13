
# Analise univariada 
ShowAlldistributions <- function(dataframe.to.plots){
  
  plotar <- function(elemento,name){
    qplot(x = elemento, data = data.frame(elemento=elemento), color = I('blue'))
    nome <- paste(name ,".jpg")
    ggsave(file = nome,path = '/home/raul/R/RProjects/Otto_Group_Product_Classification_Challenge/reports/')
    dev.off()
  }
  
  for(i in 1:ncol(dataframe.to.plots))
  {   
    nome <- paste(colnames(dataframe.to.plots)[i])
    plotar(dataframe.to.plots[,i],nome)   
  }
  
}
ShowAlldistributions(train)



feat_1.tb <- table(train$feat_1)

prop.table(feat_72.tb)
barplot(feat_72.tb)

summary(train$feat_1)

target.tb <- table(train$target)

prop.table(target.tb)
barplot(target.tb)
plot(prop.table(feat_1.tb))

# Analise bivariada
# Entender a relacao entre s variavies discretas
train <- train[,-c(1,95)]
plot(train$feat_39,train$feat_45)
cor(train$feat_1,train$feat_39)

library(corrgram)
corrgram(train[,-c(1)], order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")

M <- cor(train) # get correlations

library('corrplot') #package corrplot
corrplot(M, method = "circle") #plot matrix

cor(train$feat_39,train$feat_45)


