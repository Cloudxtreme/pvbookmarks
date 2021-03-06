


.. _pauloortins_tests:

=======================
lessons-unit-tests
=======================

.. seealso::

   - http://pauloortins.com/lessons-unit-tests/
   
   
Introduction
=============

Two years ago, I was working in a project where our goal was to write a web 
excel-like application to calculate products/services prices. 

The team was splitted in 3 pieces, the development team, the requirement team 
and the QA team. 

This project became so big and we didn’t use any types of automated tests 
(our QA team was doing manual tests) that the project spent more time being 
tested than being developed. 

Each little change, the project spent hours, hours and hours with the QA team. 

One day I went to a developer meeting and talked about my problem with others 
programmers. 

They suggested to me learn about unit tests, acceptance tests and TDD.

Learned Lessons
================

The list below is a lessons list that I learned while applying unit tests/TDD 
since 2011.

1. Don’t try to apply TDD for the first time or teach TDD to your team in a real project
----------------------------------------------------------------------------------------

It won’t work. 

First is necessary to know how TDD’s flow works. 
How to mock up objects, how to mock up the framework internals, how organize 
tests and so on, if your team is not ready, it will slow down the development 
and you will miss some deadlines.

2. Coding Dojo is a good way to teach TDD
-------------------------------------------

.. seealso::

   - :ref:`coding_dojo`

We do coding dojo sessions. 

It’s the best way we found to teach TDD to new developers and to keep our 
skills up-to-date.

3. Try to convince your whole team before applying TDD 
-------------------------------------------------------

There isn’t nothing more frustrating than one or two developers ruining our 
test efforts, commenting code, trying to commit with failing tests and so on. 

I had bad experiences with non committed developers. 

Explain about the benefits, how tests keep our software bug-free, how we can 
refactor the code without worry about break the software and so on.

4. Write sufficient tests 
--------------------------

Build a test suite is like to build a shield against bugs, the team should be 
able to fully trust in this shield when we are doing a refactoring or evolving 
the software. 

If this shield has gaps, we are increasing the risk to create unidentified bugs 
when we change the code. 

You don’t have to cover 100% of your code, it’s almost impossible and you will 
lose too much time but cover the majority of your code is perfectly achievable. 

A good rule is test everything that can possibly break.

5. Use a coverage tool 
-----------------------

Coverage tools will report gaps in our test suite. 

With these tools, is easy to identify code that aren’t being tested. 
Most of these tools give to us a visual identification, coloring the lines that 
are being tested in blue/green and coloring in red the lines that are not being 
tested. 

If you are a .NET Programmer, the Visual Studio Ultimate comes with this feature 
or if you are a Java Programmer you can use the EclEmma_.

.. _EclEmma:  http://www.eclemma.org/

6. Tests should be fast 
------------------------

Fast to run and fast to write. 

When we are building software we are always pursuing a deadline. 
Our tests have to help us to achieve this goal and not be a distraction 
or a delay.

If our tests take too much time to be written, the team will stop to write them 
when the deadlines become too tight.

If our tests take too much time to run, the team won’t run them everytime they 
change the code or they would decrease the team’s productivity.

7. Don’t comment or ignore failing tests 
-----------------------------------------

Once your team becomes comfortable with build failing due to 1 test, they will 
be comfortable with the build failing due to 2, 3, 4 tests and so on. 

At these times, the test suite feedback will be ignored and the tests won’t be 
helpful anymore.

8. Pair programming helps the team to adopt TDD 
------------------------------------------------

When we are trying TDD for the first time or when our deadline is tight, we will 
have the will to forget the tests and write only production code. 

Pair programming will prevent the team to cut corners and will keep it writing 
tests.

9. Keep your test code clean 
-----------------------------

Once, to speed our productivity, we decided that our test code shouldn’t be as 
clean as our production code. 

At first look, it was a good decision but software will change and tests will 
have to be changed too. We ended up with tests difficult to maintain and with 
larger estimates due the cost to maintain the tests.

10. Tests should have one and only one reason to fail 
------------------------------------------------------

Be careful if your test has a lot of assertions. 

If functions and classes should have only one responsability, our tests should 
test only one concept. 

In this way, it will be easier to look at a failed test and figure out what is 
wrong.

11. Write unit tests will save debug time 
------------------------------------------

A lot of time is spent debugging code, looking for bugs. 

Once you are writing unit tests, you will have a real-time feedback of each 
piece in your code, it will be easier to find bugs and consequently and it will 
reduce the time we spend debugging.

12. Keep pushing
------------------

Apply TDD is all about change our mindset. 

It’s difficult to start to write tests and is even more difficult to write 
tests BEFORE to write production code. 

It’s important to keep pushing and writing tests, one day, they will end up 
saving our lives. 
Also, once your team is fully comfortable with TDD, the productivity tend to 
increase.

