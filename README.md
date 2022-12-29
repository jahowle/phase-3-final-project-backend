# Phase 3 Final Project

## About

This is the repository for the back end application for my Flatiron Phase-3 Final project.

This back end application exists to support the front end which can be found here: https://github.com/jahowle/phase-3-final-project-frontend

## Installation

- Fork and clone this repository
- Open the project folder and run

```console
$ bundle install
```

- Then run the migrations to set up the database

```console
$ rake db:migrate
```

- After this, seed the database with dummy data by running

```console
$ rake db:seed
```

- Finally, run the server with

```console
$ rake server
```

## Architecture

The database is comprised of 5 tables: Categories, Locations, Needs, Neighbors, and Partners

API routes for interacting with the database can be found in app/controllers/application_controller.rb

## Contributing

This project was for a coding course and as such will not be maintained or updated in the future.
