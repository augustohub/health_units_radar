# Health Units Radar (API)

Health Unit Radar is a tool that provides data via API, such as geolocation and scores, about the Brazilian Basic Health Units (*UBS - Unidades Básicas de Saúde*, in portuguese).

These data are obtained through csv files published periodically in the [Brazilian Open Data Portal](http://dados.gov.br/dataset/unidades-basicas-de-saude-ubs).

# How it works?

This simple API Web contains only one route:
> GET: api/v1/find_ubs

Through it you must pass the following parameters:
| **Parameter**      | **Example**            | **Description**             |
|--------------------|:----------------------:|----------------------------:|
| query              | -23.604936,-46.692999  | Lat/Log for search          |
| page               | 2                      | Current page                |
| per_page           | 10                     | Items per page (default: 10)|

## Response
The response will show the items sorted from the nearest UBS to the farthest.
Example:
```
GET: /find_ubs?query=-23.604936,-46.692999&page=1&per_page=1

{
    "basic_health_units": [
        {
            "id": 17815,
            "name": "USF DR ARSENIO COSTA",
            "address": "POVODO PEROBA - ZONA RURAL",
            "city": "Maragogi",
            "phone": "Não se aplica",
            "geocode": {
                "lat": "-8.928816",
                "long": "-35.164232"
            },
            "scores": {
                "size": 2,
                "adaptation_for_seniors": 2,
                "medical_equipment": 1,
                "medicine": 3
            }
        }
    ],
    "meta": {
        "pagination": {
            "page": 1,
            "per_page": 1,
            "total_entries": 37690
        }
    }
}
```

# How to import data?

As already mentioned, the Brazilian Open Data Portal provides periodically a csv file containing the relevant UBS data.

To import this data, simply place the csv file in the project root and run the following command:
`bundle exec rake import:basic_health_units`

# About the project
This project is made using Ruby on Rails 5 and Postgresql 9.5
