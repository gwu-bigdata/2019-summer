# Big Data Project

The goal of the project is to identify one or more question of interest based on a large dataset and use the tools learned in class to produce an interesting result. You are welcome to use any combination of the tools we learned in class (MapReduce, Hadoop Streaming, PIG, Hive, Spark - all APIs). You are also welcome to use other tools/techniques not specifically learned in class as long as it is in addition and not instead of the tools in class.

### Dataset Requirements

You need to find a dataset that is large enough that it warrants the use of the tools learned in class. Your dataset must be at least several Gigabytes in size, regardless or format. There are many datasets out there in the wild, so find one that is interesting to you. 

**You may not use any of the following datasets:**

* New York City Taxicab
* Airline Delays

### Project Requirements

While the project is open ended, there are some parameters and guidelines to help plan and organize your approach. The project needs to have, at a minimum, the following:


* **Data Sourcing and Ingesting:** Find, retrieve or generate data and ingest it into a distributed filesystem.
* **Exploratory Analysis:** Explore, assess and visualize the data. Aggregate, count, and summarize. Create graphs, tables, etc., and explain your findings in writing. Clean data as needed and build an analytical dataset. 
* **Model:** Build any type of model you feel is appropriate and meaningful. You can perform any type of supervised or unsupervised approach. You must have evaluation metrics for supervised approaches and/or visualizations for unsupervised learning approaches. You are welcome to try different modeling techniques that you are comfortable with. 
* **Writeup:** Create a writeup of your analysis with the following elements:
	- Your Names
	- Executive Summary
	- Introduction
	- Code files (you should list your code files here, and these must be in your submitted repository with appropriate comments.)
	- Methods section:
		- How you cleaned, prepared the dataset with samples of intermediate data
		- Tools you used for analyzing the dataset and the justification (tools, models, etc.)
		- How did you model the dataset, what techniques did you use and why?
		- Did you have a hypothesis that you were trying to prove?
		- Did you just visualize the dataset, and if so, why?
	- Results/Conclusions section:
		- What did you find and learn?
		- How did you validate your results? 
	- Future work: what would you do differently and what follow-up work would you do?
* **Presentation:** Present your project to the class. What did you want to achieve? What did you do? Did it work? What did you learn? What would you do differently?
	
### Advice

This is a snippet from a chapter that Prof. Vaisman wrote for the [Bad Data Handbook](http://shop.oreilly.com/product/0636920024422.do) which I hope provides some guidance.

_There are many kind of analytical exercises you can do. Some begin as an exploration without a specific question in mind; but it could be argued that even when exploring, there are some questions in mind that are not formulated. Other exercises begin with a specific question in mind, and end up answering another question. Regardless, before you embark on a research investigation, you should have some idea of where you are going. You need to be practical and know when to stop and move onto something else. But again, start with some end in mind. Just because you have a lot of data does not mean you have to do analysis just for analysis’ sake. Very often, this kind of approach ends with wasted time and no results._

## Submitting the Project

You will be getting a blank `README.md` file in your group repository when you accept the assignment with GitHub classroom.  

The files to be committed and pushed to the repository for the project are:

* `README.md` which is your project writeup file. 
* `instance-metadata.json`
* Any script/notebook file referenced in the __code__ section of your writeup. We should be able to follow the code with the writeup.
* Do NOT commit data files to the repository,


## Grading Criteria

The project will be graded holistically with the following rubric:

Grade of A:

* Project covers all areas above
* There is discussion on specifics of the analysis, and analysis decisions are justified
* Language is clear, figures support research/investigation
* Properly formatted, clean presentation and no grammatical errors

Grade of B:

* One major deficiency and/or
* Writeup and/or analysis is missing significant discussion/justification around analysis performed and/or
* Minor flaws in layout/presentation of analysis

Grade of C:

* Two deficient areas and/or
* Major flaws in layout/presentation of analysis

Grade of D:

* Three or more deficient areas

For the purposes of grading, a **deficiency** can mean any of the following:

- Instructions are not followed
- Missing sections of the project
- Poor and sloppy writing and/or presentation
- Spelling and grammatical errors
- Code is not documented with comments
- Code files referenced are not in repository
- Missing model performance metrics
- Doing an analysis and/or model just for the sake of doing it, without thinking through and providing analytical justification
	