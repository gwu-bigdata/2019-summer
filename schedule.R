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
  notes = "**This class meets on a Tuesday.**"
)

l02 <- tibble(
  topics = "Introduction to Hadoop & MapReduce, Distributed Filesystems, Hadoop Streaming",
  lab = "[Hadoop, HDFS, EMR, Hadoop Streaming](https://github.com/bigdatateaching/lab-mapreduce-hadoop-hdfs-hadoopstreaming)",
  paper = "",
  reading = "1) DAWH Ch. 2<br/>2) Dean, Ghemawat - MapReduce...<br/>3) Vavilapalli et al. - Apache Hadoop YARN<br/>4) DAWH Ch. 3,5",
  notes = ""
)


l03 <- tibble(
  topics = "MapReduce Design Patterns, Pig and Hive",
  paper = "",
  lab = "[Pig & Hive](https://github.com/bigdatateaching/lab-pig-hive)",
  reading = "1) DAWH Ch. 6, 8(175-184)<br/>2) Huai et. al - Advancements in Hive<br/>3) Gates et. al - the PIG Experience",
  notes = "**A1 (Hadoop Streaming) due**"
)

l04 <- tibble(
  topics = "",
  paper = "",
  lab = "",
  reading = "Spark Ch. 1-3, 12, 13, 32",
  notes = "No class meeting today.<br/><br/>**A2 (Pig/Hive) due Sun Jun-16**"
)

l05 <- tibble(
  topics = "Spark introduction, Resilient Distributed Datasets, PySpark, Spark DataFrames, SparkSQL",
  paper = "Zaharia et al. - 2016 - Apache Spark A Unified Engine",
  lab = "[Intro to Spark](https://github.com/bigdatateaching/lab-intro-spark-rdd)<br/><br/>[DataFrame API and Spark SQL](https://github.com/bigdatateaching/lab-spark-sql)",
  reading = "Zaharia et al. - Apache Spark: A Unified Engine for Big Data Processing<br/><br/>Spark Ch. 4-11",
  notes = "**Project proposals due Sun Jun-23**"
)

l06 <- tibble(
  topics = "SparkML, GraphX",
  paper = "",
  lab = "[Machine Learning with Spark](https://github.com/bigdatateaching/lab-machine-learning-with-spark)",
  reading = "Spark Ch. 24-30",
  notes = "**A3 (Spark SQL, RDD) due Sun Jun-30**"
)

l07 <- tibble(
  topics = "Spark Streaming",
  lab = "[Spark Streaming](https://github.com/bigdatateaching/lab-spark-streaming)",
  paper = "",
  reading = "Spark Ch. 20, 21",
  notes = "**A4 (Spark Machine Learning) due Sun Jul-7**"
)


l08 <- tibble(
  topics = "Guest speaker JT Wolohan.",
  lab = "",
  paper = "",
  reading = "",
  notes = "**A5 due Sun Jul-14**"
)


l09 <- tibble(
  topics = "Project Presentations",
  lab = "",
  paper = "",
  reading = "",
  notes = ""
)

l10 <- tibble(
  topics = "Wrap Up, in class Final Exam",
  lab = "",
  paper = "",
  reading = "",
  notes = "**Project writeup due Fri Jul-26**"
)


sessions <- paste0("l", str_pad(as.character(1:10), 2, pad = "0"))
sched <- sched %>%
  bind_cols(lapply(sessions, get) %>%  bind_rows())

sched <- 
  sched %>%
  mutate(date = format(date, "%a %b-%d")) %>%
  select(session, date, topics, lab, reading, notes)
