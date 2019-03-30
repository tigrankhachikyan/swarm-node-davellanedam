# Strapi + Nuxtjs - JAMStack project generator

[![Build Status](https://travis-ci.org/tigrankhachikyan/swarm-strapi-nuxt-stack.svg?branch=master)](https://travis-ci.org/tigrankhachikyan/swarm-strapi-nuxt-stack)

Generate stack with a a Strapi backend and a modern (Vue.js, React, Angular) frontend.

Each in its own container, with routes handled by a Traefik proxy.

With automatic HTTPS certificate generation using Let's Encrypt.


## Features

* Full Docker integration (Docker based)
* Docker Swarm Mode deployment
* Docker Compose integration and optimization for local development
* Strapi backend:
    * CORS already configured, to be used by the frontend. [TODO: check]
* Vue frontend
    * Easily updated to be Angular or React.
    * Docker server based on Nginx (configured to play nicely with Vue-router)
    * Docker multi-stage building, so you don't need to save or commit compiled code
    * Easily enable frontend tests at build time
* Load balancing between frontend and backend with Traefik:
    * So you can have both backend and frontend under the same domain, separated by path, but served by the two different containers
* Automatic (free) HTTPS certificate generation with Let's Encrypt and Traefik


## How to use it

Go to the directoy where you want to create your project and run:

```bash
pip install cookiecutter
cookiecutter https://github.com/tigrankhachikyan/swarm-strapi-nuxt-stack
```

### Input variables

The generator (cookiecutter) will ask you for some data, you might want to have at hand before generating the project.

To see the variables asked, check the [`cookiecutter.json` file](./cookiecutter.json).

## How to deploy

This stack can be adjusted and used with several deployment options that are compatible with Docker Compose, but it is designed to be used in a cluster controlled with pure Docker in Swarm Mode with a Traefik main load balancer proxy handling automatic HTTPS certificates, using the ideas from <a href="https://dockerswarm.rocks" target="_blank">DockerSwarm.rocks</a>.

Please refer to <a href="https://dockerswarm.rocks" target="_blank">DockerSwarm.rocks</a> to see how to deploy such a cluster in 20 minutes.

## More details

After using this generator, your new project (the directory created) will contain an extensive `README.md` with instructions for development, deployment, etc. You can pre-read [the project `README.md` template here too](./{{cookiecutter.project_slug}}/README.md).

## Alternatives

This is a very simple project generator, with just the minimum to have:

* Flask in one Docker container.
* A modern frontend in a separate Docker container:
    * With an example minimal Vue application, that can easily be changed to React, Angular, etc.
* Both backend and frontend being served using a single proxy/load-balancer with Traefik:
    * Generating automatic HTTPS certificates with Let's Encrypt.

This doesn't include many useful tools for building APIs, database integrations, more sophisticate frontend features, etc.

It is just to show the minimum configurations to achieve that.

If you are building a backend that would be used by a modern frontend (like in this minimal project generator) you might benefit from other additional tools made for APIs.

This project generator has several bigger (more complete) sibling project generators that you might want to check and use.

### Strapi
[TODO]
### Nuxt

[TODO]

## License

This project is licensed under the terms of the MIT license.
