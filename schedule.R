library(tibble, quietly = T, warn.conflicts = F)
library(dplyr, quietly = T, warn.conflicts = F)
library(stringr, quietly = T, warn.conflicts = F)

noclass <- NULL

sched_vec <- c(
  as.Date("2019-05-21"),
  seq.Date(
    from = as.Date("2019-05-29"),
    to = as.Date("2019-07-24"),
    by = "week"
  )
) %>%
  .[!(. %in% noclass)] %>%
  sort(.)

sched <-
  tibble(date = sched_vec) %>%
  mutate(session = as.integer(1:nrow(.)))

## Sessions

l01 <- tibble(
  topics = "Course Overview, Big Data, Cloud Computing",
  lab = "[Setting Up](https://github.com/bigdatateaching/lab-setting-up)",
  paper = "" ,
  reading = "",
  notes = "This class meets on a Tuesday."
)

l02 <- tibble(
  topics = "Introduction to Hadoop & MapReduce, Distributed Filesystems",
  lab = "[Hadoop, HDFS, EMR](https://github.com/bigdatateaching/lab-amazonemr-hdfs)",
  paper = "",
  reading = "1) DAWH Ch. 2<br/>2) Dean, Ghemawat - MapReduce...<br/>3) Vavilapalli et al. - Apache Hadoop YARN",
  notes = ""
)


l03 <- tibble(
  topics = "Hadoop Streaming",
  lab = "[Hadoop Streaming](https://github.com/bigdatateaching/lab-hadoop-streaming)",
  paper = "",
  reading = "DAWH Ch. 3,5",
  notes = "**Project Proposals Due**"
)


l04 <- tibble(
  topics = "Pig and Hive",
  paper = "",
  lab = "[Pig & Hive](https://github.com/bigdatateaching/lab-pig-hive)",
  reading = "1) DAWH Ch. 6, 8(175-184)<br/>2) Huai et. al - Advancements in Hive<br/>3) Gates et. al - the PIG Experience",
  notes = "**A1 (Hadoop) due**"
)

l05 <- tibble(
  topics = "Spark introduction, Resilient Distributed Datasets, PySpark",
  paper = "",
  lab = "[Intro to Spark](https://github.com/bigdatateaching/lab-intro-spark-rdd)",
  reading = "",
  notes = "A2 (Pig/Hive) due**"
)

l06 <- tibble(
  topics = "Spark DataFrames, SparkSQL",
  paper = "",
  lab = "[DataFrame API and Spark SQL](https://github.com/bigdatateaching/lab-spark-sql)",
  reading = "",
  notes = ""
)

l07 <- tibble(
  topics = "SparkML, intro to GraphX",
  paper = "",
  lab = "[Machine Learning with Spark](https://github.com/bigdatateaching/lab-machine-learning-with-spark)",
  reading = "",
  notes = "A3 (Spark SQL, RDD) due"
)

l08 <- tibble(
  topics = "Spark Streaming",
  lab = "[Spark Streaming](https://github.com/bigdatateaching/lab-spark-streaming)",
  paper = "",
  reading = "",
  notes = ""
)


l09 <- tibble(
  topics = "TBD",
  lab = "",
  paper = "",
  reading = "",
  notes = "**Project Presentations**"
)

l10 <- tibble(
  topics = "Wrap Up",
  lab = "",
  paper = "",
  reading = "",
  notes = "In class Final Exam"
)


sessions <- paste0("l", str_pad(as.character(1:10), 2, pad = "0"))
sched <- sched %>%
  bind_cols(lapply(sessions, get) %>%  bind_rows())

sched <- 

  sched %>%
  mutate(date = format(date, "%a %b-%d")) %>%
  select(session, date, topics, lab, reading, notes)
