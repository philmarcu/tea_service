# Tea Service API

## Table of Contents
1. [Overview](#overview)
2. [Endpoints](#endpoints)
3. [Gems & Resources](#gems-&-resources)


## Overview
🍵 Tea Service is a subscription app designed to let a customer subscribe to regular shipments of tea for a period of their choosing - monthly, quarterly or annually. A customer can suscribe, cancel a subscription, and view all of their previous subscriptions whether they are active, pending or cancelled. A customer can also view all teas currently stored in the database. Future feature may involve consuming Tea API for data.


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
