# Interview Homework Project for Nimbl3

## Installation

* Ruby version
```ruby
2.4.3
```

* Rails version
```ruby
5.1.5
```

* Gem installation, run:
```bash
bundle install
```

* Database initialization, run:
```bash
rails db:migrate
rails db:seed
```

* Development server, run:
```bash
rails server
```

* Running the test suite:
```bash
guard
```
then press enter

## Additional gem used

* [Devise](https://github.com/plataformatec/devise), for authentication system.
* [Pundit](https://github.com/varvet/pundit), for authorization management.
* [ransack](https://github.com/activerecord-hackery/ransack), for search capability.
* [Material Design Lite Sass](material_design_lite-sass), for css framework.

## Model

### User

Schema (other than columns provided by devise):
```ruby
string "first_name", required
string "last_name", required
string "citizen_id", required
string "instructor_id", required if user.instructor?
string "student_id", required if user.student?
string "department_name", required if user.instructor?
string "role", required
integer "group_id"
```

Relationship:
```ruby
belongs_to :group, optional: true
```

### Group

Schema:
```ruby
string "name"
text "project"
text "submission"
integer "score"
```

Relationship:
```ruby
has_many :users
```

## Controller
### *Standard CRUD for Users*
Different controller than DeviseController. UsersController is used for creating and managing users. Can only be accessed by instructors.

### *Standard CRUD for Groups*
GroupsController is used for creating and managing groups. Can only be accessed by instructors.

### *groups#attendants*
GET /groups/1/attendants  
Listing all the attendants for a specific group. Can only be accessed by instructors.

### *groups#add_attendant*
POST /groups/1/add_attendant  
Adding a attendant to a group. Can only be accessed by instructors.

### *groups#remove_attendant*
DELETE /groups/1/remove_attendant  
Removing a attendant to a group. Can only be accessed by instructors.

### *groups#edit_submission*
GET /groups/1/edit_submission  
Adding submission or changing group name. Can be accessed by user who belongs to that group.

### *groups#update_submission*
POST /groups/1/update_submission  
Adding submission or changing group name. Can be accessed by user who belongs to that group.

## TODO
 - [ ] Writing test for Policies. Right now don't write test because still to simple. Easier to look at the policy file.
 - [ ] Writing test for Controllers. Most of the current use cases are already included in feature spec.