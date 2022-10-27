# Orders API

This page contain the information about the orders access and manipulation endpoints. The base URL for this API is `/api/v1/orders`. All the APIs in this section is _authenticated_.

## The schema for the orders

TODO: schema for the orders

## Past Orders API

This group of API is intended for the users to access their past orders. This API is _paginated_.

<table>
<tr><th>Method</th><th>Endpoint</th><th>Description</th></tr>
<tbody>
<tr>
<td>

`GET`

</td><td>

`/`

</td>
<td>

**Obtain a summary for all orders made by the user**  
Payload: none

Response:

<table>
<tr><th>HTTP Status</th><th>Description</th></tr>
<tr><td>200</td><td>
Emitted when the request is succeeded
</td>
</tr>
<tr>
<td>401</td>
<td>Unauthorized request (missing or invalid Access Token)

Example:

```json
{
  "status": 203,
  "message": "Invalid access token"
}
```

</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>

`GET`

</td><td>

`/:order-id`

</td>
<td>

**Get the detailed information of the orders by ID**  
Payload: none

URL parameters:

| Parameter  | Description                |
| ---------- | -------------------------- |
| `order-id` | The ID of the order to get |

Response:

<table>
<tr><th>HTTP Status</th><th>Description</th></tr>
<tr><td>200</td><td>
Emitted when the request is succeeded

Example:

```json
TODO: add schema
```

</td>
</tr>
<tr>
<td>401</td>
<td>Unauthorized request (missing or invalid Access Token)

Example:

```json
{
  "status": 203,
  "message": "Invalid access token"
}
```

</td>
</tr>
<tr>
<td>404</td>
<td>The order is not found

Example:

```json
{
  "status": 104,
  "message": "The order does not exists"
}
```

</td>
</tr>
</tr>
</table>
</td>
</tr>
</tbody>
</table>
