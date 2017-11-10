# DESSERT DASH README

## The problem
As a foodie, I sometimes get cravings for specific desserts that are located far away from me where various food delivery services won't deliver to and I don't have time to travel there to buy the desserts to satisfy my cravings.

## The solution
Dessert Dash! A dessert delivery platform where the seller, buyer and delivery person are all on the same application. Where the seller will have to sign up and register through the company. The buyer and delivery person can sign up when they want and have the choice of being both the delivery person and/or the buyer.

## User Stories
### Dessert Addict (Buyer)
- As an addict, I would like to be able to rate my dasher, so they can see how their service is.

- As an addict, I want one payment system that includes dessert payment and delivery, because I am someone who is time poor and lazy. (Stripe implementation)

- As an addict I want the options to choose if I want speedy delivery or slow delivery, so that I can spend less if I need.

- As an addict I want to be able to msg the dealer/ dasher/ admin, incase my delivery details need change etc. (internal msging system)

- As an addict I want my favourite desserts delivered when deliveroo/UBEReats/menulog can't do it, so that my cravings are satisfied, I can show my foodie friends that I am keeping up with the trends, and also reward myself with super yummy desserts when I think I deserve it without having to take the time and effort to get the dessert myself.

- As an addict, I want to be able to see the dasher's profile, so that I can choose on which dasher I want to deliver my desserts.

### Dessert Dasher (Delivery Person)
- As a dasher, I want to be able to msg the addict and/or admin, incase there are changes or questions for the order to be completed.

- As a dasher, I need to be able to see the location of the dessert and the location of the addict, so I can decide if I can take the delivery or not.

- As a person with an older car/ alternative mode of transport I want to  be able to make extra money in my spare time.

- As a dasher who commutes long distances to and from work everyday, it would be great to get paid for my commute time, so I can make extra money.

### Dessert Dealer (Seller)
- As the dealer, we need to be able to manage orders and see pickup times, so we can smoothly integrate the dessert dash orders into our operations.

- As the dealer, we need to be able to upload picture, description, price and dessert shelf life(?), so people can make informed decisions when ordering through dessert dash.

- As a small business, I would like to be able to expand my customer base, so that my business will have the most amount of exposure possible.

## Workflow diagram
[Workflow diagram]![alt text](/docs/Dessert_Dash_User_Work_Flow.png)

## Entity Relationship diagram
[ERD]![alt text](/docs/Dessert_Dash_ERD.png)

## Wireframes
- [Dealer Listing Wireframes]![alt text](/docs/DealerListingWireframe.png)
- [Dessert Listings]![alt text](/docs/DessertListingsWireframe.png)
- [Landing Page]![alt text](/docs/LandingPage.png)
- [Login Wireframe]![alt text](/docs/LoginWireframe.png)
- [Registration Page]![alt text](/docs/RegistrationWireframe.png)

## Current Project Progression
- The Dealer section of the app is currently complete with the ability to post desserts however there are still some bugs that need to be fixed.

- The user sign in is complete. Next to do would be to create Addict and Dasher Table that belongs to the user then add roles

## Future Project Progression
- create a shopping cart function with a payment system implemented.

- Use rolify and assign roles to each table (dealers, dashers, addicts)

- Add Google maps API for the Dealer location and the ability to track the Dasher's progress. (Geocoder gem?)

- App styling.

## Prerequisites
- Ruby -v 2.4.1
- Rails -v 5.1.4

## Installing
- once downloaded, make sure you bundle install to get all the gems and dependencies up and running.

- To configure API keys and passwords add them to the secret application.yaml file generated by figaro to protect your passwords and API keys.

- run rails s to start the server

## Deployment
When deploying with heroku follow the heroku guide.

1) heroku create

2) git push heroku master

3) heroku run rake db:migrate

4) figaro heroku:set -e production  

App currently deployed at https://dessert-dash.herokuapp.com/
