# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version
  3.3.4

- Configuration
  Rails auto setup

- Database creation
  PostgreSQL
- Database initialization
  Rails auto setup with model Controllers
  -rails db:create db:migrate db:seed

- How to run the test suite
  -bundle install (after cloning from github)
  After any new methods and functions are added for new features
  add tests to appropriate controllers to feature_controller_test
  boot up a rails server
  -rails server
  and runs rails test in console
  -rails test

# System-app-project

# Systems.app - Backend

## Overview

The backend for Systems.app is a Ruby on Rails API that supports the frontend by managing user data, questionnaire responses, and country information. This app demonstrates my ability to design and implement a robust backend architecture, providing secure authentication and full CRUD functionality for managing country recommendations based on user input.

## Features

- **Country Management API**:

  - Provides endpoints for creating, reading, updating, and deleting country information.
  - Stores country data, including details that align with user values.

- **User Authentication and Authorization**:

  - Implements secure authentication to ensure only authorized users can modify country data.
  - Non-authenticated users can still access country recommendations and submit questionnaire responses.

- **Questionnaire Handling**:

  - Processes and stores user inputs from the frontend questionnaire to generate relevant country recommendations.

- **Error Handling**:
  - Provides meaningful error messages for invalid API requests or user actions.
  - Ensures reliability by handling edge cases gracefully.

## Technologies Used

- **Ruby on Rails**: Framework for building the backend API and managing business logic.
- **ActiveRecord**: For database interaction and SQL query generation.
- **PostgreSQL**: As the database for storing users, questionnaire responses, and countries.
- **JWT Authentication**: For secure user login and session management.
- **RSpec**: For testing API endpoints and ensuring code reliability.

## Why This Project Showcases My Skills

1. **API Design**:

   - Demonstrates proficiency in creating a well-structured API to support a dynamic frontend application.

2. **Backend Development Expertise**:

   - Highlights my ability to manage complex data relationships and implement secure authentication.

3. **Scalability and Flexibility**:

   - Designed to handle growing datasets and feature expansions, showcasing attention to architecture and scalability.

4. **Integration with Frontend**:
   - Seamlessly integrates with the React frontend, providing a full-stack demonstration of my development skills.
