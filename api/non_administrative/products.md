# Products API

This page contain the information about the readonly products endpoints. These endpoint can be used without the authentication. The base URL for this API is `/api/v1/products` All endpoints inside this API are paginated.

## The schema for the products

```jsonc
{
  "productid": 1,
  "name": "name",
  "stock": 235,
  "price": 1200, //fixed point decimal
  "category": "A",
  "image": ""
}
```

## Randomization of output

You can randomize the order of the output by adding `/?rng=1` to the url. This might not work properly with pagination. It also not work with the searching `?q=`

## Endpoints

<table>
<tr><th>Method</th><th>Endpoint</th><th>Description</th></tr>
<tbody>
<tr>
<td>

`GET`

</td><td>

`/`</td><td>To obtain all of the products

Additional query parameters:

| Parameter | Description      |
| --------- | ---------------- |
| `q`       | The query string |

Response:

<table>
<tr><th>HTTP Status</th><th>Description</th></tr>
<tr><td>200</td><td>
Always Succeeded
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>

`GET`

</td><td>

`/:category`</td><td>To obtain all of the products under a category

URL parameters:

| Parameter  | Description            |
| ---------- | ---------------------- |
| `category` | The category to search |

Response:

<table>
<tr><th>HTTP Status</th><th>Description</th></tr>
<tr><td>200</td><td>
When the request succeeded
</td>
</tr>
<tr><td>404</td><td>
When the category does not exists
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td>

`GET`

</td><td>

`/categories`</td><td>To obtain all of the categories

Response:

<table>
<tr><th>HTTP Status</th><th>Description</th></tr>
<tr><td>200</td><td>
When the request succeeded

Response:

```jsonc
[] //list of categories in array
```

</td>
</tr>
</table>
</td>
</tr>

</tbody>
</table>
