# Part 2: Relational Schema

Convert your ER diagram into a relational database schema diagram. Use Chapters
9 and 14 as your guide. Your diagram should be similar in style to Figure 9.2
(p.291) in the text. Develop your diagram using MySQL Workbench or comparable
tool – handwritten diagrams will not be evaluated.

Note: You must use data from both IMDB datasets provided to you.  If you have
not done so for Part 01, please do so in this Part. Additionally, based on the
feedback you received for Part 1 and possibly based on changes to include all
IMDB datasets you may need to submit a revised ER diagram. Your grade for this
assignment will be how well you translate your ER diagram to a relational table,
so you may need an updated ER diagram.

## Groups

You must work in a group of size 2-4. You may change groups from Part 01.  You
may start from any ER Diagram that a group member participated in creating.

## Guidelines
1. Transform the conceptual data into normalized relations:
    a. Stong entitiy types
    b. Map weak entity types
    c. Map 1:1 relationship
    d. Map 1:N relationship
    e. Map M:N relationship
    f. Map n-ary relationships
    g. Map multivalued attributes
2. Normalize the relations to 3NF (see Chapter 14)
3. For each relation, identify all keys.
3. For each relation, identify a primary key.
4. Ensure referential integrity is achieved (i.e., no dangling references)

## What to submit?
You will submit this part using [Gradescope](https://www.gradescope.com/):

* As a group, in `Project Part02 Group` submit a single PDF containing:
  1. The revised ER diagram that you converted to a relational schema.
  2. Your relational schema - we recommend MySQL Workbench, but relational
  models similar to Figure 9.2 generated with a drawing program are also
  acceptable. In either case make sure that you indicate foreign keys.
  3. The functional dependencies in your relational schema. You can draw each of
  your relations as in Figure 14.11 (p. 482), or indicate them with text (p.473)
  as (e.g. Pnumber -> {Pname, Plocation})
  4. Other text explaining assumptions and design choices you made.
* Individually, in `Project Part02 Individual` submit a single PDF containing
  the contribution made by each team member.
