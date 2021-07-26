# ActiveRecord Associations - Many to Many

### Learning Goals:
- [] Make the connection between database schema and `ActiveRecord` relationships
- [] Implement a many to many association between two models
- [] Understand the many to many pattern
- [] Read and understand documentation on ActiveRecord association methods

---

## Important Resources for Today
- [RailsGuides on ActiveRecord](https://guides.rubyonrails.org/v5.2/active_record_basics.html)
- [RailsGuides on ActiveRecord Migrations](https://guides.rubyonrails.org/v5.2/active_record_migrations.html)
- [RailsGuides for ActiveRecord Query Interface](https://guides.rubyonrails.org/v5.2/active_record_querying.html)
- [RailsGuides for ActiveRecord Associations](https://guides.rubyonrails.org/v5.2/association_basics.html)
- [Rails documentation (section on ActiveRecord)](https://api.rubyonrails.org/v5.2.6/)
- [APIDock has_many](https://apidock.com/rails/ActiveRecord/Associations/ClassMethods/has_many)
- [APIDock belongs_to](https://apidock.com/rails/v5.2.3/ActiveRecord/Associations/ClassMethods/belongs_to)
- [VSCode Sqlite Extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)

## Topics

### What is the difference between a one to many relationship and a many to many relationship?

...
## Help me build this out

Say we want our dog walking application to be able to handle the situation where a dog walker walks multiple dogs at the same time. In this case, we'll have to consider the following questions:
1. how will our database have to change?
2. how will our models have to change?

- Create a many to many relationship between `Dog` and `Walk`
- open up `./bin/console` and create a couple of dogs and a couple of walks and then associate the two.

## Task 1 - has_many, through

We've discovered that we actually need to set up a many to many relationship between Computer and 
2. In `lib/issue.rb`, create an `Issue` class that inherits from `ActiveRecord::Base` 

3. Use an ActiveRecord association macro to create a relationship between an issue and a computer. Which type of relationship should you add here?

4. Enter `./bin/console` and create a couple of issues for the `first_computer`. Use Sqlite Explorer to check your database to ensure the issues are created.

### Discussion Questions
#### How did you create the issues table? 

...

#### How would you describe the relationship between an issue and a computer?

...
#### When you use the association method to access the related computer, what does the SQL query look like?

...


## Help me build this out

- Finish adding the one-to-many relationship between `Dog <== Walk`


## Task 2 - has_many

1. Update the Computer class to add an ActiveRecord association method that relates the Computer model to the Issue model.

2. Open up `./bin/console` and use it to create an issue for a computer and then access that computer and view all of its issues. Confirm that you're able to call a method on either the issue or the computer and see the other object in the return value.

### Discussion Questions

#### What are the database requirements for a has_many relationship? 

...
#### What about the belongs_to relationship?

...
#### What other examples of one-to-many relationships can you think of?

...