# Conditional Get Cache demo

## API Endpoints

Content-Type: application/json

### GET `/books`

* Response: 

```
{
  "id": 1,
  "author": "J.K Rowling",
  "title": "Harry Potter",
  "introduction": "Bla bla bla",
  "published_at": "2008-12-29",
  "created_at": "2018-12-29T09:43:27.074Z",
  "updated_at": "2018-12-29T09:43:27.074Z"
}
```

### POST `/books`

* Request:

```
{
  "books": {
    "title": "Harry Potter",
    "author": "Tongfei",
    "introduction": "",
    "published_at": "2018-12-29"
  }
}
```

* Response:

```
{
  "success": true // false
}
```

### PUT `/books/:id`

* Request: 

```
{
  "books": {
    "title": "Harry Potter",
    "author": "Tongfei",
    "introduction": "",
    "published_at": "2018-12-29"
  }
}
```

* Response:

```
{
  "success": true
}
```