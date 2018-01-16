#################################################
# Calculate the Subtraction Matrix given a vector
#
# Juan C. Villada, Patrick KH Lee
# School of Energy and Environment
# City University of Hong Kong
# 2017
#################################################

values_file <- list.files(pattern = "values.txt")
samples_matrix <- as.matrix(read.delim2(values_file, header = TRUE, row.names = 1))
samples_values <- as.numeric(samples_matrix[,1])
subtraction_matrix <- matrix(nrow = length(samples_values), ncol = length(samples_values))
for(i in (1:length(samples_values)) ){
  vect_subtract <- samples_values - samples_values[i]
  subtraction_matrix[,i] <- vect_subtract
}
rownames(subtraction_matrix) <- rownames(samples_matrix)
colnames(subtraction_matrix) <- rownames(samples_matrix)
write.table(x = subtraction_matrix, file = "subtraction_matrix.txt", quote = F, sep = "\t")