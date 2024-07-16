# myTasks

A simple task management application built with Ruby on Rails.

## Screenshots

|Desktop|Mobile|
|---|---|
|<img width="1440" alt="Screenshot 2024-07-17 at 00 48 07" src="https://github.com/user-attachments/assets/3ae868a5-ddf8-41e2-b378-7defc7f751f9">|<img width="345" alt="Screenshot 2024-07-17 at 00 49 44" src="https://github.com/user-attachments/assets/87e29b5e-afce-4339-ba77-69260f70a7ad">|

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
