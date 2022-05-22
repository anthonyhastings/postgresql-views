# PostgreSQL Views

## Introduction
![postgresql-views-readme](https://user-images.githubusercontent.com/167421/169718791-e63a760a-56d9-40db-9a48-581bc66f9802.gif)

This repository is a demonstration of using PostgreSQL views, which are essentially virtual tables / logical tables / pseudo tables. It houses a containerized PostgreSQL server which gets initialised with sample tables, populated with same data, and has a view created.

## Instructions
These instructions assume you already have `docker` and `docker-compose` installed. The steps are as follows:

1. Run the service which will also (on first creation) run the bundled SQL files.
```bash
docker-compose up
```

1. Use a PostgreSQL client (such as [DBeaver Community](https://dbeaver.io/download/) to connect to the service (using the port, username, password and database name provided in `.env` and `docker-compose.yml`) and interact with the view.

## Information
Views represent the data of one or more underlying tables but do not store said data physically. The tables involved are referred to as 'base tables'. A view can contain all rows of a table or selected rows from one or more tables. Views can be queried using `SELECT` as if they were ordinary tables, but cannot have `INSERT`, `UPDATE` or `DELETE` statements executed upon them.

Some advantages of using views are:
- Summarize data from various tables, which can be used to generate reports.
- A view helps simplify the complexity of a query because you can query a view, which is based on a complex query, using a simple `SELECT` statement.
- Views are assigned separate permissions; access can be restricted such that a user can only see limited data from a view, instead of complete tables.

## Further Information
- [PostgreSQL - VIEWS](https://www.tutorialspoint.com/postgresql/postgresql_views.htm)
- [What is PostgreSQL View?](https://www.guru99.com/postgresql-view.html)
- [Managing PostgreSQL Views](https://www.postgresqltutorial.com/postgresql-views/managing-postgresql-views/)