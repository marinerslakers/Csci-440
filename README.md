# Database Systems: CSCI 440

**NOTE: This is a live document and is subject to change throughout the
semester.**

This course is designed to introduce the essential concepts of database systems
and implementation of database applications. The topics covered in the course
have wide applications and will help you to think about how to model, organize,
and find data.  The techniques have a wide variety of uses.  Some of my
favorites are analytics, predictions, web applications, physics, and
anthropology.  Topics include modeling and organizing data, relational algebra
fundamentals; SQL query language; index file structures.  We will also discuss
current trends in database design, including the various flavors of noSQL
databases and more advanced topics.  Throughout the course students will gain
hands on experience through assignments and team projects.

## Assignments

Class will be a mix of lecture and solving problems in class .  Problems are
designed to give you a better understanding of the topics taught in lecture.
Early in the lecture, we will have a lot of of concepts to cover. Initially,
most problems will be written.  For written assignments, you will submit using
[Gradescope](https://www.gradescope.com/).  Our course entry code is M4VY3B.

As we advance, we will start writing code, so, you will want to bring your
laptop (or work with a partner if you don't have a laptop). For coding
assignments, code will be provided to get you up and running.  You must demo
your labs to me in class or office hours and push your code up to Bitbucket in
a repository you've shared with me prior to class on the due date.

All assignments and other resources for the class will be made available via
Bitbucket.  I suggest forking the repository so that you can maintain your own
course materials. See the resources below for forking directions.

To clone this repo:

    $ git clone https://bitbucket.org/msu-cs/csci-440-fall2018

## Meeting Times

Mon, Wed, Fri 11:00 - 11:50 301 Lindfield Hall

## Instructor

David L. Millman, Ph.D.

**Email**: david.millman@montana.edu

**Office hours**: Mon 12:00 - 12:50 and Thurs 14:00 - 14:50

**Bitbucket username**: david_millman

## Grader

TBA

**Email**: TBA

**Bitbucket username**: TBA

## Main References

All optional but recommended

* [Fundamentals of Database Systems, 7th
  edition](https://www.pearson.com/us/higher-education/program/Elmasri-Fundamentals-of-Database-Systems-7th-Edition/PGM189052.html),
  (FoDS in recommended reading below).
* [W3 Schools SQL Tutorial](https://www.w3schools.com/sql/) (W3 in recommended
  reading below).

## Technical Resources

* [Git Udacity Mini-course](https://www.udacity.com/course/how-to-use-git-and-github--ud775)
* [Forking in Git Tutorial](https://help.github.com/articles/fork-a-repo/)
* [Markdown](https://daringfireball.net/projects/markdown/)
* [Markdown Interactive Tutorial](https://www.markdowntutorial.com/)
* [Jekyll](https://jekyllrb.com/docs/quickstart/)

## Class schedule

The lecture schedule is subject to change throughout the semester, but here is
the current plan. Assignments and due dates will be updated as they're assigned
in class.

### August

| Date | Description                                                         | Assigned                       | Due                            | Reading       |
|------|---------------------------------------------------------------------|--------------------------------|--------------------------------|---------------|
| 8/27 | [Database Systems](./notes/2018-08-27.pdf)                          |                                |                                |               |
| 8/29 | [DB example](./notes/2018-08-29.pdf)                                |                                |                                | FoDS 1        |
| 8/31 | [Model, Schemas, and three schema arch](./notes/2018-08-31.pdf)     |                                |                                | FoDS 2.1-.4   |

### September

| Date | Description                                                         | Assigned               | Due         | Reading       | Video         |
|------|---------------------------------------------------------------------|------------------------|-------------|---------------|---------------|
| 9/3  | Labor Day (no class)                                                |                        |             |               |               |
| 9/5  | [Conceptual Design & Company Example](./notes/2018-09-05.pdf)       | Homework 01 (D2L quiz) |             | FoDS 3.1-.3   |               |
| 9/7  | [ER Model - Attributes](./notes/2018-09-07.pdf)                     |                        |             | FoDS 3.3      |               |
|      |                                                                     |                        |             |               |               |
| 9/10 | ER Model - Relationships                                            | Homework 02            |             | FoDS 3.3-.7   | [pt 1](https://youtu.be/ROPlELgFx_c)-[pt 2](https://youtu.be/8jQ0on2f51U)-[pt 3](https://youtu.be/Hx55D2BddxE)-[pt 4](https://youtu.be/6XllpWTseB0)-[pt 5](https://youtu.be/rP7XCZFEZe8) |
| 9/12 | Enhanced ER                                                         |                        | Homework 01 | FoDS 4.1-.2   |               |
| 9/14 | Enhanced ER                                                         |                        |             | FoDS 4.2-.3   |               |
|      |                                                                     |                        |             |               |               |
| 9/17 | Relational Data Model                                               | Homework 03            | Homework 02 | FoDS 5        |               |
| 9/19 | EER to Relational Mapping                                           |                        |             | FoDS 9        |               |
| 9/21 | Normal Forms                                                        |                        |             | FoDS 14.1-.2  |               |
|      |                                                                     |                        |             |               |               |
| 9/24 | Normal Forms                                                        | Homework 04            | Homework 03 | FoDS 14.2-.3  |               |
| 9/26 | Normal Forms                                                        |                        |             | FoDS 14.3-.4  |               |
| 9/28 | Normal Forms                                                        |                        |             | FoDS 14.4-.5  |               |

### October

| Date  | Description                                                         | Assigned                       | Due                            | Recommended Reading                        |
|-------|---------------------------------------------------------------------|--------------------------------|--------------------------------|--------------------------------------------|
| 10/1  | Relational Algebra                                                  | Homework 05                    | Homework 04                    | FoDS 8.1-.5                                |
| 10/3  | Relational Calculus                                                 |                                |                                | FoDS 8.6-.7                                |
| 10/5  | Exam                                                                |                                |                                |                                            |
|       |                                                                     |                                |                                |                                            |
| 10/8  | Basic SQL                                                           | Homework 06                    | Homework 05                    | FoDS 6.1-6.2                               |
| 10/10 | Basic SQL                                                           |                                |                                | FoDS 6.3-6.4                               |
| 10/12 | Intermediate SQL                                                    |                                |                                | FoDS 7.1                                   |
|       |                                                                     |                                |                                |                                            |
| 10/15 | Intermediate SQL                                                    | Homework 07                    | Homework 06                    | FoDS 7.2                                   |
| 10/17 | Intermediate SQL                                                    |                                |                                | FoDS 7.3                                   |
| 10/19 | Intermediate SQL                                                    |                                |                                | FoDS 7.4                                   |
|       |                                                                     |                                |                                |                                            |
| 10/22 |                                                                     |                                |                                |                                            |
| 10/24 |                                                                     |                                |                                |                                            |
| 10/26 |                                                                     |                                |                                |                                            |
|       |                                                                     |                                |                                |                                            |
| 10/29 |                                                                     | Writing Project                |                                |                                            |
| 10/31 |                                                                     |                                |                                |                                            |

### November

| Date  | Description                                                         | Assigned                       | Due                            | Recommended Reading                        |
|-------|---------------------------------------------------------------------|--------------------------------|--------------------------------|--------------------------------------------|
| 11/2  | Invention session with Writing Center                               |                                | Project ideas due              |                                            |
|       |                                                                     |                                |                                |                                            |
| 11/5  |                                                                     |                                |                                |                                            |
| 11/7  |                                                                     |                                |                                |                                            |
| 11/9  |                                                                     |                                | Writing Project v0             |                                            |
|       |                                                                     |                                |                                |                                            |
| 11/12 |                                                                     |                                |                                |                                            |
| 11/14 |                                                                     |                                |                                |                                            |
| 11/16 |                                                                     |                                |                                |                                            |
|       |                                                                     |                                |                                |                                            |
| 11/19 |                                                                     |                                | Feedback on Project v0         |                                            |
| 11/21 |                                                                     |                                |                                |                                            |
| 11/23 |                                                                     |                                |                                |                                            |
|       |                                                                     |                                |                                |                                            |
| 11/26 |                                                                     |                                |                                |                                            |
| 11/28 |                                                                     |                                |                                |                                            |
| 11/30 |                                                                     |                                | Writing Project v1             |                                            |

### December

| Date  		| Description                                                         | Assigned                       | Due                            | Recommended Reading                        |
|-------		|---------------------------------------------------------------------|--------------------------------|--------------------------------|--------------------------------------------|
| 12/3  		|                                                                     |                                |                                |                                            |
| 12/5  		|                                                                     |                                |                                |                                            |
| 12/7  		|                                                                     |                                |                                |                                            |
|       		|                                                                     |                                |                                |                                            |
| 12/11 (4-6) 	| Finals period                                                       |                                | Tutorial Pitch                 |                                            |

## Potential Upcoming Topics:
- Indexing
- Transactions
- NoSQL
- Web Programming
- Data Mining
- Query Optimization
- Spatial databases

## Catalog Information

PREREQUISITE: CSCI 232. DBMS architecture; major database models; relational
algebra fundamentals; SQL query language; index file structures, data modeling
and management, entity relationship diagrams.

## Course Offerings

At the end of the course, students should be able to:

* Explain the characteristics of different data storage methods
* Design database storage structure on conceptual and relational levels
* Explain the purpose of normal forms and perform data normalization up to 3NF
* Form relational algebra and SQL queries
* Implement and query relational databases using a DBMS
* Utilize a designed and populated database to analyze the associated data

## Course Evaluation

* Attendance and Participation 5%
* Homework 25%
* Project 20%
* Tutorial 20%
* Exam 1 15%
* Exam 2 15%

## Discussion Board

Group discussions, questions, and announcements will take place using
Brightspace.  It is OK to send me an email if you have a question that you feel
is not appropriate to share with the class.  If, however, you send me an email
with a question for which the response would be useful to the rest of the class,
I will likely ask you to post it.

## Policy on Collaboration and Academic Misconduct

Collaboration IS encouraged, however, all submitted individual work must be your
own and you must acknowledge your collaborators at the beginning of the
submission.

On any group project, every team member is expected to make a substantial
contribution. The distribution of the work, however, is up to the team.

A few specifics for the assignments.  You may:

* Work with the other people on your team.
* Share ideas with other teams.
* Help other teams debug their code.

You may NOT:

* Share code that you wrote with other teams.
* Submit code that someone on your team did not write.
* Modify another's code and claim it as your own.

Using resources in addition to the course materials is encouraged. But, be sure
to properly cite additional resources. Remember, it is NEVER acceptable to pass
others work off as your own.

Paraphrasing or quoting another’s work without citing the source is a form of
academic misconduct. Even inadvertent or unintentional misuse or appropriation
of another’s work (such as relying heavily on source material that is not
acknowledged) is considered plagiarism. If you have any questions about using
and citing sources, you are expected to ask for clarification. My rule of thumb
is if I am in doubt, I cite.

By participating in this class, you agree to abide by the [student code of
conduct](http://www.montana.edu/policy/student_conduct/).  Please review the
policy.

## Policy on Assignments

All assignments must be submitted by the start of class on the due date. Late
assignments will not be accepted.

For descriptive assignments and reports, the submission should be typed up and
submitted as a PDF (LaTeX suggested but not required). For code assignments,
well organized source code with clear comments should be submitted.

## Policy on Class Attendance

Class attendance is mandatory. You are responsible for the material covered in
class. Prepare in advance for class by reading and studying the assigned text,
and by making sure you understand the previous lecture.

## Classroom Etiquette

Except for note taking and coding, please keep electronic devices off during
class, they can be distractions to other students. Disruptions to the class will
result in you being asked to leave the lecture and will negatively impact your
grade.

## Special needs information

If you have a documented disability for which you are or may be requesting an
accommodation(s), you are encouraged to contact me and Disabled
Student Services as soon as possible.
