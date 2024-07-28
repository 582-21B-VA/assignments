# LIA

> Due date: 30 July \
> Weight: 40%

For this course's LIA, you need to implement the REST server for a task
management application. You will find the requirements below.

## Requirements

-   The server must have four endpoints: `/` to get a list of tasks,
    `/add` to add a task, `/delete` to delete a task, and `/register` to
    create an account. 

-   A task has an automatically generated numeral identifier as well as
    a name. When a task has been successfully created, the server
    responds with a message containing the task's identifier. To delete
    a task, the client must provide the task's identifier.

-   The content type of responses must be HTML, but their body can be a
    fragment (i.e. it's OK to omit `<head>`, `<body>`, etc.).

-   To access all endpoints but `/register`, a user must be logged in.
    Authentication must use the Basic scheme. A user has an email and a
    password. No two users can have the same email. 

-   Tasks and users must be stored in a SQLite database. Users can only
    access their own tasks.

-   Each function must include a signature and a purpose statement. For
    instance:

    ```js
    // Request, Object -> Response
    // Show a list of all tasks for the user.
    function homeHandler(req, data) {
        ...
    }
    ```

## Testing

You can test your server using the following curl commands. Don't forget
to make sure all endpoints but `/register` are protected, and that
users can only access their own tasks.

```sh
curl localhost:8000/register -d "email=rika@gmail.com&password=secret123" 
curl localhost:8000/add -u "rika@gmail.com:secret123" -d "name=Buy+milk"
curl localhost:8000/add -u "rika@gmail.com:secret123" -d "name=Call+mom"
curl localhost:8000/ -u "rika@gmail.com:secret123"
curl localhost:8000/delete -u "rika@gmai.com:secret123" -d "id=1"
```

## Submission

The project must be submitted in a repository using GitHub Classroom. To
create the repository, click [here][], and accept the assignment.

[here]: https://classroom.github.com/a/KpsNMF8L

## Assessment criteria

-   Requirements are met.
-   Code is readable and consistently formatted.
-   Naming is descriptive and consistant.
-   Program flow is decomposed into manageable, logical pieces.
-   Common code is unified, and not duplicated.
-   APIs are used correctly.
-   Responses are well formed (headers, status code).
-   Database is normalized.
-   Documentation is correct and clear.
