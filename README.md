# Private Events

[Members Only](https://peaceful-river-81983.herokuapp.com/) is a full-stack Rails app built from scratch, providing Users with the ability to create events, attend events, and view attendance. Events are also seperated into those which have already occured, and future events yet to come. 

## Demo

<img src='events-demo.png' alt='events_demo'>

## How to Access

[This link will take you to the live website](https://peaceful-river-81983.herokuapp.com/) deployed on heroku. Create new events and view attendance by singing in with the username: `user1` and the password: `password1`.

## Features

- Authenticate user data using Devise to ensure client privacy
- Use MVC design pattern to separate Models and Views from Controllers for ease of code maintainability
- Fix Rubocop warnings to decrease probability of future bugs and errors in the code
- Use Flexbox and Grid together for layout and design of each View
- Utilize Active Records has-many-through associations to create a join model between the Events and their Attendees
