## Marley Spoon Recipes

Marley Spoon Recipes is a simple Sinatra application where users can see
- a list of Marley Spoon recipes
- detailed information about each recipe.

The application is a view-only application which connects to Marley Spoon's Contentful CMS via the Contentful Content Delivery API.

Views have been implemented without styling as no UI specification has been provided as of yet.

The app requires:
- Ruby version 2.6.1
- Git

The app is deployed at [https://marley-spoon-recipes.herokuapp.com](https://marley-spoon-recipes.herokuapp.com)

### Installing Ruby:

Ensure you have the correct version of ruby installed. You can check your ruby version by typing `ruby --version` in your terminal.

Instructions for how to install Ruby will depend on your development environment and the tool you use to manage your ruby installations. Please see the [Ruby documentation website](https://www.ruby-lang.org/en/documentation/installation/) for detailed installation instructions.

### SetUp

Clone the repositoty: `git clone git@github.com:carlad/marley-spoon-recipes.git`

After cloning the repository navigate into the project directory `cd marley-spoon-recipes` and run `bundle install`.

You will need to create a `.env` file in the root directory with values set for the CONTENTFUL_SPACE_ID and 
CONTENTFUL_ACCESS_TOKEN environment variables. Copy the `.env_example` file and add the credentials found [here](https://gist.github.com/lawitschka/063f2e28bd6993cac5f8b40b991ae899#credentials).

(The `.env` file is ignored by git and not committed, to ensure no credentials are leaked - see the `.gitignore` file).

### To run the app locally:

Run `bundle exec puma` then visit [localhost:9292](http://localhost:9292)

### To run tests locally:

Run `bundle exec rspec`

You can also use Guard to watch for any file changes and rerun relevant tests automatically: 
`bundle exec guard`

### Pre-commit and pre-push hooks:
It is recommended to use the configured pre-commit and pre-push hooks to check linting, security, and ensure tests pass before pushing.

You will need to install the hooks locally for them to take effect:
`$ ./scripts/install-hooks.bash`

### Continuous Deployment
The application uses [CircleCI](https://circleci.com) to run tests and deploy to [Heroku](https://heroku.com). 

To run your own instance of the application using the same tools you will need to configure the CONTENTFUL_SPACE_ID and CONTENTFUL_ACCESS_TOKEN environment variables on both platforms, as well as the HEROKU_APP_NAME and your HEROKU_API_KEY on CircleCI. Refer to the [Heroku Docs](https://devcenter.heroku.com/articles/config-vars#using-the-heroku-dashboard) and [CircleCI Docs](https://circleci.com/docs/2.0/env-vars/#setting-an-environment-variable-in-a-project) for more information on how to do this.

---

TODO: Parse markdown content in views
