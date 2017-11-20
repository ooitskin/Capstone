#### Name: Pic-it
[Pic-it App](#)

#### General Approach:
I wanted to make a picture sharing application. So with that in mind, I drew out my wireframes that would contain what pages I would need in the application. I tried to go by my original wireframes, but of course, it didn't go as planned, but they are really similar to the current wireframe of the application. As I was planning the application, I was thinking of what features a user may want in this photo sharing app. The MVP of this project was to be able to have User Authentication working, a user can upload an image, the uploaded image will render on the main index page, and a show page that will render a single post when clicked. A simple CRUD app for the posts. Once that was up and running, I added the features that I may want to see in this app. 

#### Installation:
Assuming your system can use Ruby.

If you clone the repo, ```cd``` into the directory and bundle install in your terminal.

Then, in your terminal, run ```db:create```, ```db:migrate``` to create the databases required.

Then run ```rails s``` to run the server.

#### Technologies used:
![alt text](https://i.imgur.com/2vVJu3Dl.png)

#### Gems used:
Acts As Voteable - https://github.com/ryanto/acts_as_votable
<br>
BCrypt - https://github.com/codahale/bcrypt-ruby
<br>
Devise - https://github.com/plataformatec/devise
<br>
HTTparty - https://github.com/jnunemaker/httparty
<br>
Material Icons - https://github.com/Angelmmiguel/material_icons
<br>
Paperclip / Image Magick - https://github.com/thoughtbot/paperclip
<br>
Rails jQuery - https://github.com/rails/jquery-rails

#### API used:
Unsplash API - https://unsplash.com/developers

#### User Stories:
As a user, I want to be able to upload an image. As a user, I want to be able to comment on other user's posts. As a user, I want to be able to 'like' a post. As a user, I want to be able to search for an image and share it. As a user, I want to be able to edit my posts or delete them. As a user, I want to be able to delete a comment. 

#### Original Wireframes:
[Log in Page](https://wireframe.cc/uxJ0ru)
<br>
[Homepage](https://wireframe.cc/TvXRF2)
<br>
[Search Page](https://wireframe.cc/Vzp0qQ)

#### Current Wireframes:
Sign up page:<br>
![alt text](https://i.imgur.com/F9jUWPml.png)
<br>
Log in page:<br>
![alt text](https://i.imgur.com/6ikKy5Ml.png)
<br>
Homepage:<br>
![alt text](https://i.imgur.com/6C2o2bxl.png)
<br>
Search page:<br>
![alt text](https://i.imgur.com/iQiS5BLl.png)

#### Unsolved Problems/Major Hurdles:
I didn't have many unsolved problems. I hit my MVP early during project week. After MVP, I just wanted to my app to be functional without giving errors and empty pages. 
<br>
There were a couple of reach goals that I wanted to meet, but could not figure out. I wanted to add A-Frame to the images. Aframe adds Augumented Reality/Virtual Reality to the images. It would make images responsive, for example, a user can drag the photo around, sort of like a panoramic photo. 
<br>
Another reach goal that I was not able to acheive was to add notifications where if another user 'hearts' your posts, the owner of the post would receive a notification.
