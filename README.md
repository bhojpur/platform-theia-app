# Bhojpur.NET Platform Extension - Theia IDE
An extension of the Theia Desktop IDE running in the Bhojpur.NET Platform. It is an example extension built for the Bhojpur.NET Platform.

## Getting started

### Building a Bhojpur.NET Platform extension and application
    yarn
    yarn build

### Starting a Bhojpur.NET Platform application
    cd app
    yarn start

Open http://localhost:3000 in the browser.

## Developing a Bhojpur.NET Platform application

Watching

    yarn watch

Start watching of the browser example.

    cd browser-app
    yarn watch

Launch `Start Browser Backend` configuration from the OpenVSCode.

Open http://localhost:3000 in the browser.

## Building executable images

Currently there are two types of Docker images: regular (theia/Dockerfile) and debug (theia/build/debug/Dockerfile).
They can be build via their `build-image.sh` scripts.

For pulling from private npmjs.org repos there is a `docker.npmrc` file with the needed auth_token for the
[Bhojpur Consulting](https://www.bhojpur-consulting.com) team members.

See top-level README file for more yarn commands relared to building docker images.

## Publishing a Bhojpur.NET Platform Extension

The user `bhojpur` can publish and retrieve the packages in `@bhojpur` scope.
Login.

    npm login

Publish packages with lerna to update versions properly across local packages,
[more on publishing with lerna](https://github.com/lerna/lerna#publish).

    npx lerna publish

## Expected Environment variables

The Bhojpur.NET Platform extension is designed to be deployed with a Bhojpur.NET Platform application backend,
where the following envs are defined:
 - BHOJPUR_HOST (the url prefix to call in order to signal activity)
 - BHOJPUR_APPLICATION_ID ( applicationid is simply appended to the host)
 - BHOJPUR_INTERVAL (the interval for doing keep alive requests in milliseconds, defaults to '10000'. )
