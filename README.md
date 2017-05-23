# NFC Payments Web-Api

Base url: https://thawing-ocean-8598.herokuapp.com

## Users
POST /login
- Request: {
  "user": {
    "email": "dork@gmail.com",
    "password": "123123123"
  }
}

- Result: 
{
  "auth_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE0OTYwNzcyMTAsImlzcyI6Imlzc3Vlcl9uYW1lIiwiYXVkIjoiY2xpZW50In0.z9tV2yJ3T_vXVbro9jprYhtGul1PehNTHk3uethtBi4"
}

POST /register
- Request: {
  "user": {
    "email": "dork@gmail.com",
    "password": "123123123",
    "password_confirmation": "123123123"
  }
}

- Result:
{'status': 'User created successfully'}

## Orders
POST /create-order [must login]
- Request: { "nfc_id": "xx", "amount": "100" }
- Response: { 'status': 'Order created/not created', order_object}

POST /pay-order
[must login]
- Request: { "nfc_id": "123##", "buyer_auth_token": "eeexssa"}
- Result: { 'status': 'Order paid!' } or 'Order not paid!'

Add http header authorization with value "auth_token" (juridinio kliento)