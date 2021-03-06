# WDI Movi-er

[link to application](https://enigmatic-river-26198.herokuapp.com/)

[link to trello board](https://trello.com/b/dNAwEKtb/wdi-project-2)

[link to mockup](https://wdi-project2.mybalsamiq.com/projects/wdiproject2/)

[link to ERD](https://www.gliffy.com/go/share/svk0bt6paksq0w272o5t)

__________________

### Languages and dependencies
 - HTML
 - CSS
 - Ruby
 - Ruby on Rails
    - Paperclip
    - Bcrypt
    - Bootstrap
    - Bootswatch

### Documentation and Organization
- Trello
- MyBalsamiq
- Gliffy
- SLACK OVERFLOW: THE ABSOLUTE BOY OF GETTING OUT OF A JAM

__________________

## So what is this?
My app is called Movi-er. Its sort of a mashup between Rotten Tomatoes and Twitter. You can leave reviews on movies, but have to do it in 160 characters or less. Cool, right?

__________________
## Approach taken.

After having a hell of a time on my last project, I decided to learn from my mistakes and map out my path before hand. While i did deviate a bit with the UI, this kept me on track throughout my project.

As far as coding is concerned, I started with the User model and its functioality first. Since users are the backbone of the application (e.g: you cant leave a review or create a movie without it), this seemed like the place to start my project. Bcrypt made a lot of this easy.

From there, I was able to create the Review model. In retrospect, I should have done the movies first as I had to undo a lot of my seeding for the reviews after realizing that there were way too many reviews for me to manually attach to a movie and keep my sanity at the same time.

Lastly, I was able to create the Movie model and got the app to properly assign a movie id to reviews as well as user id's to both reviews and users.

After that, my MVP was complete and this allowed me to play around a bit. I thought of using [the openmoviedatabase-api](https://github.com/18Months/themoviedb-api) to find movies and import them. While i was able to get this working on rails console in a sandbox environment, I ultimately decided against this as I was running into time constraints. It was more important for me to help others than to have a really mind blowing project.

In the end, the only stretch goals I was able to push to sprint was the avatar system and adding images to the movie creation process. This ate up a lot of my extra time. From there, it was only a matter of making things look pretty with CSS/Bootstrap/Bootswatch and I was home free.

Until I had my friends test my app and they nearly broke everything I thought was working but thats what QA is for. The testing, while annoying from the standpoint of seeing something you've worked on be reduced to meme trash within hours, helped me pinpoint somethings I assumed paperclip took care of.

A dev's work is never done so I dont know why I thought I was done. But that's it. That was my approach.

__________________


## Installation/startup instructions

1.  Clone the repo

2. cd to the location where you cloned the repo

3. run the following command in the terminal to create your database and migrate the columns
  ```
  rails db:create
  rails db:migrate
  ```
  then run this command to open the project in either Atom or Sublime

  Atom
 ```
 atom .
 ```

 Sublime
 ```
 subl .
 ```
__________________

4. add the following to your gemfile for basic app functionality

```
#gems for bootstrap
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.6'

#bootswatch gem
gem 'bootswatch-rails'


#paperclip for local image uploads
gem 'paperclip'


# Bcrypt for password
gem 'bcrypt', '~> 3.1.7'

```
________________
then run bundle install from terminal

5. In app/stylesheets/application.css, rename application.css to application.scss then copy the following code into the renamed file

```
// "bootstrap-sprockets" must be imported before "bootstrap" and "bootstrap/variables"
@import "bootstrap-sprockets";
@import "bootstrap"
```
________________
6. add the following in app/assets/javascripts/application.js

```
//= require jquery
//= require bootstrap-sprockets
```

________________

## Unsolved problems and next steps.
1. add a search function and/or include OMDB functionality
2. add upvote/downvote
3. add a following feature (able to see when people post new reviews)
4. Add security measures and tighter image restrictions (no gifs)
5. Check for duplicate movies
6. limit title field to 250 characters, max :'(
