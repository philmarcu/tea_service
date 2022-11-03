# Tea Service API

## Table of Contents
1. [Overview](#overview)
2. [Database Design](#database-design)
3. [Endpoints](#endpoints)
4. [Gems & Resources](#gems-&-resources)


## Overview
🍵 Tea Service is a subscription app designed to let a customer subscribe to regular shipments of tea for a period of their choosing - monthly, quarterly or annually. A customer can suscribe, cancel a subscription, and view all of their previous subscriptions whether they are active, pending or cancelled. A customer can also view all teas currently stored in the database. Future feature may involve consuming Tea API for data.


## Database Design

Database was designed with intention of using the Subscription model as a join table between the customer and a specified tea that the customer intends to subscribe to. This was designed with the intention of making the customer primarily make differne subscriptions to different teas as each tea would have an individual frequency plan. Future potential refactors could include making it possible to subscribe to multiple teas with one subscription, like creating a Bulk Subscription model possibly or just changing the current Subscription model.

![tea_service_db](https://user-images.githubusercontent.com/48334178/199797285-fb9811a3-b855-45f4-bc5e-f0b6dce5e45e.png)


## Endpoints

The current endpoints in tea service are:

### Find All Teas

```
GET /teas
```

### Find a Customer's Subscriptions

```
GET /customers/:customer_id/subscriptions
```

### Create a Subscription

```
POST /subscriptions
```

### Cancel a Subscription

```
DELETE /subscriptions/:id
```


## Gems & Resources

Gems used in the creation of this project: 

[jsonapi-serializer](https://github.com/jsonapi-serializer/jsonapi-serializer#installation) 
[Faker](https://github.com/faker-ruby/faker#usage)
[Factory Bot](https://github.com/thoughtbot/factory_bot)
