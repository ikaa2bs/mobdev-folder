# Backend Architecture

Two classes of servers:

- API server (frontend for the client)
- Postgres (OLAP and OLTP have their own instances)

## API Server

- Based in nodejs
- JavaScript

### API Components

- Router (as the API route for the frontend)
- Database related (models and apis)
- Crypto (password hash)
- Email (SMTP)
- Payment (Stripe)

## Debug infrastructure

- fake-smtp-server (npm)
- fake payment endpoint (customer)

## QA environment

Docker
