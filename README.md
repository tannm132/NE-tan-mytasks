# myTasks

A simple task management application built with Ruby on Rails.

## Installation

1. Clone the repository:
    ```sh
    git clone git@github.com:tannm132/NE-tan-mytasks.git
    cd NE-tan-mytasks
    ```

2. Check your Ruby version:
    ```sh
    ruby -v
    ```
    The output should start with something like `ruby 3.3.4`. If not, install the correct Ruby version using rbenv.

3. Install dependencies:
    ```sh
    bundle install
    yarn install
    ```

4. Set up the database:
    ```sh
    rails db:create
    rails db:migrate
    rails db:seed
    ```

## Usage

To start the Rails server:
```sh
rails server
```
Visit http://localhost:3000 in your browser.

## Testing

Run the test suite:
```sh
bundle exec rspec
```