
# /api/v1/donations

### Request body

When the donation type is money
```json
{
   	"user_email": "mail@mail.com",
   	"user_name": "Lucas",
   	"donation_value": 10.55,
   	"donation_type": "Money",
   	"payment_method": "credit_card"
}
```
When the donation type is product
```json
{
	"user_email": "mail@mail.com",
	"user_name": "Lucas",
	"donation_value": 10,
	"donation_type": "Product",
	"campaign_name": "Rice"
}
```

### Response body
```json
{
  "donation": {
    "id": 61,
    "user_id": 4,
    "donatable_type": "Money",
    "donatable_id": 23,
    "created_at": "2020-06-06T19:44:53.613Z",
    "updated_at": "2020-06-06T19:44:53.613Z"
  },
  "donation_info": {
    "id": 23,
    "value": 10.55,
    "payment_method": "credit_card",
    "created_at": "2020-06-06T19:44:53.603Z",
    "updated_at": "2020-06-06T19:44:53.603Z"
  }
}
```
---
# /api/v1/comments

### Request body

```json
{
	"user_id": 4,
	"donation_id": 61,
	"message": "123456"
}
```

### Response body
```json
{
  "id": 23,
  "user_id": 4,
  "message": "123456",
  "donation_id": 61,
  "created_at": "2020-06-06T23:04:35.358Z",
  "updated_at": "2020-06-06T23:04:35.358Z"
}
```
