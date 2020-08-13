
# List

mix <-  list("D.s", "A.I", c("Python", 3.7), 
             rbind(c("R", "D.S"),
                   c("Python", "A.I")))

names(mix)

# indexing

mix[1:2]
mix[1]
mix[[1]]

mix[c(1,4)]
mix[[c(4,2)]]

mix[[4]][,2]


mix[4]
mix[[4]]





mix[1:3]


mix$item_3
mix[[3]]


# value update in a list



mix$item_4[2,2] <- "D.S"


coln <- c("Languages", "Subjects")
rown <-  c("Course_1", "Course_2")

colnames(mix[[4]]) <- coln
rownames(mix$item_4) <- rown



# Add item in list

mix$item_5 <-  "We are done"



new <- list("abc", c("xyz",123))


single <-  c(mix, new)

lstoflst <-  list(mix = mix, new = new)

# names(lstoflst) <-  c("mix", "new")


