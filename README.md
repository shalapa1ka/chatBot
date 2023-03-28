# README

This is a Ruby on Rails 7 web application that allows users to chat with an AI chatbot powered by the ChatGPT API. The application uses esbuild to manage assets, Bootstrap for styling, Postgresql for the database, and propshaft for asset compilation.

## Requirements

* `Ruby 3.0.0` or higher
* `Rails 7` or higher
* `Postgresql 12` or higher
* `ChatGPT API credentials`

### Configuration

Before running the application, you will need to configure the database connection in `config/database.yml`.

### Installation

1. Clone the repository: `git clone https://github.com/shalapa1ka/chatBot.git`
2. Install dependencies: `bundle install`
3. Create the database: `rails db:create`
4. Run migrations: `rails db:migrate`
5. Set up your ChatGPT API credentials: `rails credentials:edit`

### How to Run the Test Suite
To run the test suite, run the following command: `rails test`

### Usage
To run the application, start the Rails server: `rails server`

### Contributing
Contributions are welcome! If you notice any issues or have suggestions for improvement, please feel free to submit a pull request.

### License
This project is licensed under the MIT License. See the LICENSE file for more information.
