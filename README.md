# docker-shibboleth-sp

A docker image for a generic shibboleth service provider based on an apache web server.

Image docker chargée de mettre à disposition un serveur web apache2 et un démon shibboleth pour un service provider (sp).

Pour construire l'image :
```bash
make build
```

L'alias de l'image aura alors comme nom : ``docker-shibboleth-sp``

L'image peut ensuite être utilisée en lui passant des paramètres cf exemple dans BibRP/docker-compose.yml