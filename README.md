`sign` tool (from nginx-jwt repo) is used to generate a JWT:

```bash
test/sign '{"foo": "bar"}' 'strong secret key!'
```

Given token can be used to access a protected application:
```bash
curl http://127.0.0.1:8081/secure -H 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJuYW1lIjoiQW5kcmV3IiwiaWF0IjoxNTIwMjY3NzcwfQ.308JSo6JTLlpPYx-BuRz001hAF3ATZX7KpS3a8oo74A'
```

W/o the JWT the `401 Authorization Required` status is returned.
