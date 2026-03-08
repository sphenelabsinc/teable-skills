# access-token Endpoints

- Source API: `Teable App`
- Version: `1.0.0`
- Endpoint count: `6`

## Operations

### GET /access-token

- Method: `GET`
- Path: `/access-token`
- Parameters: `0`
- Request Body: `no`
- Response Codes: `200`
- Description: List access token

### POST /access-token

- Method: `POST`
- Path: `/access-token`
- Parameters: `0`
- Request Body: `yes`
- Response Codes: `201`
- Description: Create access token

### DELETE /access-token/{id}

- Method: `DELETE`
- Path: `/access-token/{id}`
- Parameters: `1`
- Request Body: `no`
- Response Codes: `200`
- Description: Delete access token

### GET /access-token/{id}

- Method: `GET`
- Path: `/access-token/{id}`
- Parameters: `1`
- Request Body: `no`
- Response Codes: `200`
- Description: Get access token

### PUT /access-token/{id}

- Method: `PUT`
- Path: `/access-token/{id}`
- Parameters: `1`
- Request Body: `yes`
- Response Codes: `200`
- Description: Update access token

### POST /access-token/{id}/refresh

- Method: `POST`
- Path: `/access-token/{id}/refresh`
- Parameters: `1`
- Request Body: `yes`
- Response Codes: `201`
- Description: Refresh access token
