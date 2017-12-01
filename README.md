radio
=====

A fork of [cburmeister/radio](https://github.com/cburmeister/radio) intended for environments without persistent file systems. Supports TLS and HTTP/2 streaming.

---

## Media

Expects a remote playlist URI referencing remote source files, one per line:
```
annotate:title="<example>",artist="<example>":https://example.s3.eu-central-1.amazonaws.com/<filename>.mp3
annotate:title="<example>",artist="<example>":https://example.s3.eu-central-1.amazonaws.com/<filename>.mp3
annotate:title="<example>",artist="<example>":https://example.s3.eu-central-1.amazonaws.com/<filename>.mp3
```

## Configuration

Next you need to set some environment variables for configuration, add the following to a .env file in the root of this project:
```bash
ICECAST_SOURCE_PASSWORD=somethingsecret
ICECAST_ADMIN_PASSWORD=somethingsecret
ICECAST_PASSWORD=somethingsecret
ICECAST_RELAY_PASSWORD=somethingsecret
ICECAST_HOST=icecast
ICECAST_PORT=8000
PLAYLIST_URI=example-playlist-uri.example
```

## Deployment

Now you can begin broadcasting these mixes with `docker-compose up -d`.

Stream will now be available on port 80.
---
