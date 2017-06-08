[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Capstone-API documentation

- [Link to Deployed Application](https://awoodrum87.github.io/capstone-client/index.html)
- [Link to Deployed Heroku App](https://quiet-island-36585.herokuapp.com/)
- [Link to Client Documentation](https://github.com/awoodrum87/capstone-client)

## Dependencies
Install with bundle install.

- [rails-api](https://github.com/rails-api/rails-api)
- [rails](https://github.com/rails/rails)
- [active_model_serializers](https://github.com/rails-api/active_model_serializers)
- [ruby](https://www.ruby-lang.org/en/)
- [postgres](https://www.postgresql.org/)

## ERD
https://goo.gl/photos/EvsBimgCCCRs1d7c9

## Routes

Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

Quotes

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/quotes`              | `quotes#create`   |
| PATCH  | `/quotes/:id`          | `quotes#update`   |
| DELETE | `/quotes/:id`          | `quotes#destroy`  |
| GET    | `/quotes`              | `quotes#index`    |
| GET    | `/my-quotes/`          | `quotes#my-quotes`


## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
