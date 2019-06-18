# Getting Started
## Requirements

Before running the application, make sure you have these dependencies in your environment:

* Ruby (2.6.1)
* Rails (4.2.1 or greater)
* MySQL
* Git (1.8 or greater)

## Running the project

1. Clone the project repository:

        https://github.com/Erickw/spcha.git

2. Bundle the dependencies. In the app folder:

        bundle install
        
3. Change the following `.database.yml` file variables related to your database (You need to have the same db in MySQL):

        DATABASE_HOST=<db_host>
        DATABASE_USERNAME=<db_username>
        DATABASE_PASSWORD=<db_password>
        DATABASE_NAME=<db_name>
        
4. Run rake `rake db:create` and after `rake db:migrate` to generate the database on project.

5. To start the server:

        rails s
        
        
Great! The project should be running on http://localhost:3000/usuarios
