#!/usr/bin/liquidsoap

source = playlist(
  getenv('PLAYLIST_URI'),
  mime_type='application/x-mpegURL'
)

output.icecast(
    %mp3,
    host=getenv('ICECAST_PORT_8000_TCP_ADDR'),
    port=int_of_string(getenv('ICECAST_PORT_8000_TCP_PORT')),
    password=getenv('ICECAST_ENV_ICECAST_SOURCE_PASSWORD'),
    mount='stream',
    fallible=true,
    source
)
