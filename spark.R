library(devtools)
Sys.setenv(SPARK_HOME = "C://spark-2.1.0")
.libPaths(c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib"), .libPaths()))
library(SparkR)
sc <- sparkR.init(master = "local[*]")
result <- read.df( "hdfs://localhost:9000//analytics/result.csv","csv")
head(result)
colnames(result)
df <- as.DataFrame(result)

printSchema(df)

#output
#1 ImageId Label
#2       1     0
#3       2     0
#4       3     0
#5       4     0
#6       5     0
