# step 0: reading all needed data

data.set.dir <- "UCI HAR Dataset"

read.subset <- function(subset.name) {
  subset.dir <- file.path(data.set.dir, subset.name)
  
  subject.file.name <- file.path(subset.dir, sprintf("subject_%s.txt", subset.name))
  subject <- read.table(subject.file.name, col.names = "subject")
  
  data.file.name <- file.path(subset.dir, sprintf("X_%s.txt", subset.name))
  data <- read.table(data.file.name)

  activity.file.name <- file.path(subset.dir, sprintf("y_%s.txt", subset.name))
  activity <- read.table(activity.file.name, col.names = "activity")
  
  return(cbind(subject, activity, data))
}

train.subset <- read.subset("train")
test.subset <- read.subset("test")

features <- read.table(file.path(data.set.dir, "features.txt"), 
                       stringsAsFactors = FALSE, col.names = c("feature.idx", "feature.name"))

activity.labels <- read.table(file.path(data.set.dir, "activity_labels.txt"), 
                              stringsAsFactors = FALSE, col.names = c("activity.class", "activity.name"))

# step 1: merging datasets

data.set <- rbind(train.subset, test.subset)

# step 2: extract min/stdev ("ms" for short) measurements (together with subject and activity)

ms.idx <- grep("mean\\(\\)|std\\(\\)", features$feature.name)

ms.data.set <- data.set[, c(1, 2, ms.idx + 2)]

# step 3: remap activity classes to names

ms.data.set$activity <- activity.labels$activity.name[ms.data.set$activity]

# step 4: setup measurement column names

normalized.names <- tolower(gsub("[^A-Za-z]", "", features$feature.name[ms.idx]))

colnames(ms.data.set)[3:(length(normalized.names)+2)] <- normalized.names

# step 5: producing aggregate data set

library(dplyr)

ms.aggregate <- ms.data.set %>% group_by(subject, activity) %>% summarise_each(funs(mean))

write.table(ms.aggregate, file.path(".", "ms-aggregate.txt"), row.names = FALSE)
