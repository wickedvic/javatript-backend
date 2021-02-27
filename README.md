# README

Front End Repo: https://github.com/wickedvic/javatript-frontend

Demo Video: https://youtu.be/fyA_alfn9Zk

Summary: A web app similar to instagram where users can upload pics of themselves, add a location and when they create a new post, the location they inputted gets updated onto a map and adds a pin. Additionally users can like and comment on pics. 

- Used Vanilla JS for the front-end and Rails for the back-end
- Used Geocoder Ruby Gem to get longitude/latitude of a user upon them entering a location for a post 
- Used Mapbox API to have a fully functional map. Additionally used API to allow users to mark a pin on the map for a visited location once receiving the longitude/latitude from Geocoder

The application’s main goal should be to hit CRUD (CREATE, READ, UPDATE, DESTROY).

1. Users are able to add a location that they have visited by using add a new trip form. 
2. Upon entering a location and a trip title, we can see a pin being added to our map using Geocoder Ruby Gem
3. Once a pin is created a user can click on the pin and add a post using the add a post form
4. After creating a post with a Picture url and a caption, we can see a new card being rendered onto the page
5. As a user we can go ahead and like, comment and delete a post that was created
