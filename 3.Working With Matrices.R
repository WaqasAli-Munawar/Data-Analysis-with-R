harvard <- c(1,1,1,1,3)
stanford <- c(2,9,3,4,10)
MIT <- c(3,3,2,2,1)
cambridge <- c(4,2,6,13,48)
oxford <- c(5,7,12,9,15)
columbia <- c(6,13,13,12,4)

uni_matrix <- rbind(harvard,stanford,MIT,cambridge,oxford, columbia)
print(uni_matrix)

# names(harvard) <- c("World_rank","quality_of_education","influence",
#"broad_impact", "patents")


colnames(uni_matrix) <- c("World_rank","quality_of_education","influence",
                    "broad_impact", "patents")
# rownames()

tuition <- c(40000,41000,42000,43000,44000,45000)
dim(uni_matrix)[1] == length(tuition)

uni_matrix <- cbind(uni_matrix, tuition)

# Indexing

uni_matrix[1,5]

uni_matrix["harvard", "patents"]


uni_matrix["oxford",]
uni_matrix[,"tuition"]

uni_matrix[,c("World_rank","influence")]

uni_matrix[1:4,]

uni_matrix["harvard":"cambridge",]

uni_matrix[1:4,"World_rank"]


world <-  rank(uni_matrix[,1])
edcuation <-  rank(uni_matrix[,2])
influence <- rank(uni_matrix[,3])
impact <- rank(uni_matrix[,4])
patents <- rank(uni_matrix[,5])
tutition <- rank(uni_matrix[,6])


rank <-  rbind(world, edcuation, influence, impact, patents, tutition)


sum(rank[,1])















