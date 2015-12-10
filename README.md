# docker-shibboleth-sp

Image docker chargée de mettre à disposition un serveur web apache2 et un démon shibboleth pour un service provider (sp).

Pour construire l'image :
```bash
make build
```

L'alias de l'image aura alors comme nom : ``docker-shibboleth-sp``

L'image peut ensuite être utilisée. Exemple dans BibRP/docker-compose.yml