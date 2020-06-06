## Marley Spoon Recipes

Marley Spoon Recipes is a simple Sinatra application where users can see:
- a list of Marley Spoon recipes
- detailed information about each recipe.

The application is a view-only application which connects to Marley Spoon's Contentful CMS.

The app requires:
- Ruby version 2.6.1
- Git

The app is deployed at [https://marley-spoon-recipes.herokuapp.com](https://marley-spoon-recipes.herokuapp.com)

### To run locally:

Ensure you have the correct version ruby installed. You can check your ruby version by typing `ruby --version` in your terminal.

Instructions for how to do this depend on your development environment and the tool you use to manage your ruby installations. Please see the [Ruby documentation website](https://www.ruby-lang.org/en/documentation/installation/) for detailed installation instructions.

After cloning the repository navigate into the project directory `cd marley-recipes` and run `bundle install`.

You will need to create a `.env` file in the root directory with values set for the CONTENTFUL_SPACE_ID and 
CONTENTFUL_ACCESS_TOKEN environment variables. Copy the `.env_example` file and add the credentials found [here](https://gist.github.com/lawitschka/063f2e28bd6993cac5f8b40b991ae899#credentials).

The `.env` file is ignored by git and not committed, to ensure no credentials are leaked.

### To start the server: 

`$ bundle exec puma`

visit `localhost:9292`

### To run tests locally:
`bundle exec rspec`

You can also use Guard to watch for any file changes and rerun relevant tests:
`bundle exec guard`

### Pre-commit and pre-push hooks:
It is recommended to use the configured pre-commit and pre-push hooks to check linting, security, and ensure tests are run before pushing.

You will need to install the hooks locally for them to take effect:
`$ ./scripts/install-hooks.bash`
