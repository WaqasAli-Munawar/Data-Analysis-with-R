num

# vector

vec <- c(88,87.67)
typeof(vec)

mean(vec)
length(vec)
#min, max, sum
vec[2] # indexing
vec[1:2]
vec <- c(88,87.67, 93.28)
vec[1:3] # slicing
vec[c(1,3)]

vec_names <- c("Maths", "Chemistry", "Physics")

names(vec) <- vec_names

names(vec)

vec["Chemistry"]

vec[c("Maths", "Physics")]


# vec["Maths": "Physics"]


# comparsion Operator

avg_score <- mean(vec)

below_avg <- vec < avg_score # boolean mask  ------ below_avg = vec < avg_score
typeof(below_avg)

vec[below_avg] # logical/boolean indexing


# Mutliple Vector


test <- c(88,93,94)
homework <-  c(80,84,96)
projects <- c(73,82,91)

avg_course <- (test+homework+projects)
avg_course <- (test+homework+projects)/3




test <- c(88,93,94)
homework <-  c(80,84,96, 81,82)
projects <- c(73,82,91,73,86)

avg_course <- (test+homework+projects)

avg_course

test <- c(test, 75,63)

