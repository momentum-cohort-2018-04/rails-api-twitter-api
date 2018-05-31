# Build a Microblogging API

## Description

For this group project, you will work in pairs to build an api-only application that provides data to a service like Twitter. The application will allow users to create and share short posts and comment on posts.

The API will respond with JSON data to HTTP requests sent from a client.

_Yes, the posts are tweets. But please find another name to call them in your app._

## Project details

Design your API to support a service like Twitter, allowing users to create and share microposts and to favorite other users' microposts.

Begin with thinking about the resources that you need to create. Map the endpoints you'll expose and the data structures you will return.

Please provide documentation for how to use your API in your project's README. In the documentation, you should list the available endpoints and any query parameters you can accept. Think about the documentation that's been helpful to you, and include any information that will make it easier to consume your api (for your fellow developers!).

Your API will also need to implement token authentication. You can use Rails' built-in support for HTTP token authentication and `has_secure_token` macro.

### Requirements

- Users should have a `username`, a `password_digest`, and any other info you think a user should have.
- Users should be able to register for an account and log in.
- Posts have a text body and belong to a user.
- Only authenticated users can create or delete posts.
  - Posts are not editable. They can only be created and destroyed.
  - Only the user that created a post should be able to delete it.
- Posts should not be valid if they are less than 2 characters or greater than 280 characters. Although a client-side application would likely show validations in the UI to prevent invalid submissions, this validation should exist on the model to ensure that only valid data is persisted to the database.

### Extra challenges

- Add the ability to re-post another user's posts.
- Add the ability to "follow" other users on the site. You should be able to query for the posts of the other users you are following. See the [`acts_as_follower` gem](https://github.com/tcocca/acts_as_follower).
- Add the ability to "unfollow" users you have followed.
- Create a new type of user: an admin user. This admin user should be allowed to edit anybody's posts or user accounts.
  - No one should be able to create an admin user through the API (it'll have to be created from the rails console), but you should be able to authenticate an admin user.
