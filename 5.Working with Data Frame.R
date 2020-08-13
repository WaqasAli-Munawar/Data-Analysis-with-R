library(readr)
library(dplyr)

recent_grads <- read_csv("recent_grads.csv")
class(recent_grads)
typeof(recent_grads)

recent_grads[,3]
recent_grads[,"Major"]
recent_grads$Major

recent_grads[c(1,3,5),"Unemployment_rate"]
recent_grads$Unemployment_rate[c(1,3,5)]

recent_grads[, c("Major", "Major_category","Total",
                 "Men","Women", "Median", "Unemployment_rate")]

recent_grads_select <- recent_grads %>% select(Major,Major_category, Total, Men, Women, 
                        Median, Unemployment_rate)  # %>% pipeline operator


recent_grads_select <- recent_grads_select %>% mutate(Women_Percent = (Women/Total)*100)


recent_grads_health <- recent_grads_select %>% filter(Major_category == "Health")
recent_grads_health



# "Biology & Life Science" , "Physical Sciences" 


recent_grads_sciences <- recent_grads_select %>% 
  filter(Major_category == "Biology & Life Science" | Major_category == "Physical Sciences")
print(recent_grads_sciences)

potential_major <- recent_grads_sciences %>% filter(Median >=40000 & Women_Percent >40)
print(potential_major)
  
  
my_majors <- potential_major %>% arrange(Unemployment_rate, desc(Median))
print(my_majors)


  
  
  
  
  










