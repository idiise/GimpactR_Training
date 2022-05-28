# comment ctrl + shift +c
# run lines ctrl+ enter
# create section ctrl+shift+R
# run section   ctrl+alt+T
# delete line ctrl+D


# First section -----------------------------------------------------------
# collect c()
# object operators = or alt+6 or alt + -
#  " "

a <- 6
b <- 10
d <- a+b
names <- "Idrissa"  
# vectors
names <- c("Idrissa", "prince", "Jacob")
age <- c(30,29,25)

# rep repeat

rep("idrissa", 1000)
rep(c("Idrissa","prince","Jacob"),c(3,2,1))

# sequence :
id <- 1 : 500
id

# sequence seq
seq(from = -50, to = -20, by=5)

mean(age)
c(30,29,25)
mean(c(30,29,25))

Country <- c("Senegal", "Ghana", "Mali")
# To create dataset use the function data.frame()

dataset <- data.frame(names, age, Country)

# Exercise
# in the Picture you have 
# 1 Create 4 objetcs : Person, Sexe, Weight, height
# 2 calculate the mean for the variables if it is possible
# 3 claculate the Body Mass Index (BMI) :BMI = weight/(Height/100)^2
# 4 create a dataset where you will have Person, weight, height, Sexe and BMI

# Exercice Solution
# Question 1
Person <- c("Érika","Célia","Éric","Ève","Paul",
               "Jean","Adan","Louis","Jules","Léo")
Weight <- c(16,14,13.5,15.4,16.5,16,17,14.8,17,16.7)
Height <- c(100,97,95.5,101,100,98.5,103,98,101.5,100)
Sexe <- c("F","F","G","F","G","G","G","G","G","G")

# Question 2 :
mean(Weight)  # résultat :  [1] 15.69
mean(Height) # résultat :  [1] 99.45

# Question 3 : 
BMI <- Weight/(Height/100)^2 
BMI   # Print résults

# Question 4 :
maTable <- data.frame(Individus,Poids,Taille,Sexe,IMC)

# Bonus
dataset <- as.data.frame(de(""))
plot(x = Height, y = Weight, main ="Plot exemple" )
