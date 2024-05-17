# Take-home exam 1

> Weight: 20% \
> Due date: May 24

This assignment aims to assess your understanding of the relational
model and SQL's data definition syntax. In order to do so, you are
tasked with designing the schema of the database described below.

## Requirements

Clients can make one or more reservations for a table at a restaurant.
To make a reservation, clients must provide their name, email, and phone
number. Clients are identified by a unique number. No two clients can
have the same email. Reservations are identified by their date as well
as the client who makes the reservation. Clients cannot make more than
one reservation for the same day. Reservations must specify the number
of guests, and dietary restrictions, if any. Dietary restrictions have a
small description.

## Submission

A file named « schema.sql » must be submitted in a repository using
GitHub Classroom. To create the repository, click [here][], and accept
the assignment.

[here]: https://classroom.github.com/a/iLEC1MVC

## Assessment criteria

-   Requirements are met.
-   Code is legible: lines are no longer than 80 characters long, and
    complex queries are split into multiple lines.
-   Formatting and indentation is consistent.
-   The schema is normalized: i.e., it meets the third normal form.
