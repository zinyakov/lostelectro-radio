radio
=====

A fork of [cburmeister/radio](https://github.com/cburmeister/radio) intended for environments without persistent file systems.

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
PLAYLIST_URI=example-playlist-uri.example
```

## Deployment

Now you can begin broadcasting these mixes with `docker-compose up -d`.

Once the services are running you can view the `icecast` interface at `:8000`.

---

This is currently being run on an [EC2](https://aws.amazon.com/ec2/) micro instance.
