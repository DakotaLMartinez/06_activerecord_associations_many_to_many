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

## Segment 2 - Task: Apply has_many, through

For our issue tracking application, we want to:
- give technicians the ability to keep track of the issues they're currently working on.
- give technicians the ability to keep track of the computers they have worked with.
- give technicians the ability to see which other technicians have worked on a computer. 

To do that, we'll discovered that we actually need to set up a many to many relationship and utilize the `has_many, through` macro.

1. In `lib/technician.rb`, create a `Technician` class that inherits from `ActiveRecord::Base`

2. Add relationships between `Technician` and our `Issue` and `Computer` models.

3. Run the tests to ensure that the relationships are properly established.

4. Enter `./bin/console` and create a couple of computers, a couple of technicians and a couple of issues. Use Sqlite Explorer to check your database to ensure the appropriate records are created.

### Discussion Questions
#### How many macros are involved in implementing the many to many relationship and where do they go? 

...

#### What is a join model? Which of the 3 classes we defined here is a join model?

...

## Group Discussion

Practice building out models and migrations here [Group Discussion](https://hackmd.io/@dlm/phase4-lesson6-activerecord-associations-many-to-many-discussion-72721)