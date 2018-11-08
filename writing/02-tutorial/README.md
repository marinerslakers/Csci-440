# Normalizing a Database

When creating a database, especially one that will be used to store large amounts of data, it's important to make sure that the data is stored as efficiently as possible. This can be accomplished by normalizing the database. Normalization is used to reduce redundancy and anomalies that can occur when inserting, deleting, and modifying entries in a database. There are several different "tiers" of normalization; this tutorial will go over the first two: 1NF and 2NF.

### What You'll Need to Know

This tutorial assumes you're already familiar with the basics of databases: tuples, relations, and functional dependencies are key parts of normalization.

## 1NF

The first tier of normalization is called "1NF" and is an important step in preparing for further normalization. The goal of 1NF is to make sure that all attributes of a tuple are broken down into atomic values; that is, all attributes contain a single value. Consider the tuple below:

![Base Example](./images/"Base Example.GIF" "Data Set")

Notice how the "Color" attribute contains "Red, White, Blue"? To achieve 1NF, the "Color" attribute must be broken down. But how do we achieve this?

There are 3 different methods we could use to fix this.

### 1. Add Tuples
One solution is to create a new tuple in the relation for every value, like so:

![Add Tuple Example](./images/"Add Tuple Example.GIF" "Example of adding tuples")

As you can see, there now exists a new tuple for every value in the "Color" attribute. Unfortunately, this method can lead to issues of bloated databases, especially if used to normalize multiple multi-valued attributes within a single tuple.

### 2. Add Columns
Another solution is to add more attributes to a tuple that will accommodate the maximum number of values an attribute can possess. For example, if we know that the maximum number of colors is 3, we could expand the tuple to:

![Add Column Example](./images/"Add Column Example.GIF" "Example of adding columns")

There are some drawbacks to this method as well. First of all, it requires us to know exactly what the maximum number of values for an attribute is. Often times in the real world, while we can estimate how many values an attribute will have in general, it can be very difficult to predict the MAXIMUM number of values. And even if we can, that can lead to other issues. For our previous example, we assumed that the maximum number of colors was 3, but what if, in reality, it could contain every color in existence? If we assumed that every unique RGB combination was its own color, that would give us over 16.5 million colors! Trying to add a column for every one of those would defeat the purpose of normalization!

This isn't to say that adding columns is a bad solution, it is often used effectively in database design. However, it just means that we need to make sure we fully understand the what will be required of our database before implementing it.

### 3. Add Relations
The third solution that can be used to solve this issue is to create a whole new relation for the values of the attribute. In this case our example would appear as:

![Add Relation Example](./images/"Add Relation Example.GIF" "Example of adding a relation")

Notice that the "Color" attribute has been completely dropped from the original tuple, and is instead added to an entirely different tuple. This method is the most versatile of the three methods, as any number of value can be inserted into the accompanying relation without worrying about too many or too few columns in the main tuple. However, the drawback to this is that it can make some of the logic when accessing the data a little more complicated.

##Exercise 1
Consider the following tuples:

![Exercise 1](./images/"Exercise 1.GIF" "Exercise 1")

Use each method we've learned to normalize this relation to 1NF. Use the answer key at the end of this tutorial to check your work, but try to do it yourself first to get the most out of it.

## 2NF

Normal forms are cumulative so in order to put your relational schema in second normal form you must already have achieved first normal form.  Before covering 2NF it is important to understand the concept of functional dependencies.

### Functional Dependencies
If X and Y are attribute sets in your entity, then Y has a functional dependency on X (written as X -> Y) if we can know the value of Y in any tuple just by looking at the value of X.  This means that each value in the attribute set of Y appearing in a tuple maps to a single value of X in that tuple.  The value of X in a tuple implies the value of Y in that tuple.  Let's take a look at an example:

Looking at the schema for car we can see we have two models (Taurus and Focus) with the make Ford.  Make is functionally dependent on model (model -> make) because every time a car has one of these models we know that the make will be Ford.  Model is not functionally dependent on make however (make -/> model) because there are multiple models in this table (Taurus and Focus) with the make 'Ford'.

Functional dependency X -> Y is a full functional dependency if removing an attribute from X causes the functional dependency to no longer hold.  In our car example there is only one attribute in X which is make so this is obviously a full functional dependency but lets suppose that the only cars in our table are Ford model-T's as shown below.

In this table we can see that you can get your model-T in any color so long as its black!  Therefore by knowing the model (model-T) we know both the make and the color.  This is a partial functional dependency because if we were to remove the attribute color from X we would still have a functional dependency X -> Y where the model is functionally dependent on the make.

## Exercise 1 Answers
Here is how we solved Exercise 1 using the "Adding tuples" method:

![Tuples Answer](./images/"Tuples Answer.GIF" "Answer using additional tuples")

Here is how we solved Exercise 1 using the "Adding columns" method:

![Column Answer](./images/"Column Answer.GIF" "Answer using additional columns")

here is how we solved Exercise 1 using the "Adding a relation" method:

![Relation Answer](./images/"Relation Answer.GIF" "Answer using an additional relation")