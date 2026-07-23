# Load balancer

Scripts for configuring redundant web servers behind an HAProxy load balancer.

## Files

- `0-custom_http_response_header` — installs nginx and adds an `X-Served-By` header set to the server hostname
