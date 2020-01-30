## Eventor

An event management web application made in Rails from scratch. <br>
Roles : Event Organiser, Venue Owner, Service Provider and Normal Users.


#### Setup:
* Clone the repo
* Run bundle install
* Run `rake db:setup`
* To generate some dummy data : Run `rake setup_data`
    Optionally, clear the data with `rake clear_data`


#### Dependencies used:
- devise gem : For User Authentication 
- cancancan gem : For Role Management 
- carrierwave gem : For image upload
- cloudinary gem : For hosting images
- faker gem : To generate dummy data
- JQuery Full Calendar : To display booked dates for events/venues
- Momentjs : To format date in javascript
- JQuery Chosen : To enhance select boxes
- DateTime Picker : For choosing date and time
- Bootstrap 4.4.1
