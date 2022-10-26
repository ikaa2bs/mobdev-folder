# Authenticated Request Guide

This document describes the guideline in sending the authenticated request

## Obtaining the access token

To obtain an access token, issue a call to the `/api/auth/login` and you will get the access token in the `token` field in the response.

## Validaty

The returned token has the maximum validaty of the 24 hours since the last call

## Passing the token in making the authenticated calls

To provide an access token to the protected endpoint, include a header `X-Access-Token` in the request as shown below:

```
GET / HTTP 1.1
Host: api.merch.xyz
X-Access-Token: <put your token here>
Content-Type: application/json; charset=utf8
.......
```

## Revoking the token

It is advised to revoke the token when you know it will be never be used again by making an authenticated call to the `/api/auth/revoke` endpoint
