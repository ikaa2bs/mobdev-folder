# Products API

This page contain the information about the readonly products endpoints. These endpoint can be used without the authentication. The base URL for this API is `/api/v1/products`

## General guideline

All of the endpoints stated here will return the products depending on the endpoint used. To avoid sending too much data, all APIs stated here are paginated. The query strings used for the pagination are stated here:

| Parameter name | Description                                      |
| -------------- | ------------------------------------------------ |
| `page`         | The page number                                  |
| `limit`        | The maximum number of items the API shall return |

For the pagination purposed, all of the responses returned by the endpoint will be escapsulated into a object as shown as below:

```jsonc
{
    "offset":100, //the effective offset
    "page":2, //the page number
    "items":50, //the number of the items returned in the response
    "results":[{.....}]
}
```

## The schema for the products

TODO: To document the schema for the items

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
Always Succeeded
</td>
</tr>
</table>
</td>
</tr>

</tbody>
</table>
