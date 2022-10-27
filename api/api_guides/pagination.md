# Pagination Guide

This document describes the general guideline on all the APIs which are marked as _paginated_

## General guideline

The API will return the results depending on the endpoint used. To avoid sending too much data, all APIs stated here are paginated. The query strings used for the pagination are stated here:

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
