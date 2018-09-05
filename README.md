# v2ray-arukas-all-in-one

A v2ray docker image work with nginx for Arukas.

- v2ray work with websocket
- v2ray request proxy_pass by nginx
- custom v2ray settings
- add environment variables to edit optional setting
  - CLIENT_ID (default f3c9cb27-746f-4e41-acf2-820bd3002676)
  - CLIENT_ALTERID (default 100)
  - CLIENT_WSPATH (default /fuckgfw_letscrossgfw)
  - VER (default 3.14)
- don't need custom domain and ssl certificate
- only cost 1 pods

**USE: deploy this image and add default secure route with port 8080 in arukas**

- path to v2ray: https://your.domain/fuckgfw_letscrossgfw
- path to websites: /usr/share/nginx/html/
