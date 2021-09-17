# Nonzero Playground

Nonzero playground is a set of visual tools for playing with canvas objects in the browser, starting with [Chromata](https://www.michaelbromley.co.uk/experiments/chromata/)

## Requirements

Even though all of the code is client-side, due to to the fact that images will be loaded via url, a simple web server will need to be run in order to load assets. For this we will use a lightweight nginx container loaded via docker.

- [Git](https://git-scm.com/)
- [Docker Desktop](https://www.docker.com/get-started)


## Instructions

### To Start server
Open a terminal window and `cd` to the install directory.
Then run the following command:
```
./playground
```

This will serve a website accessible to your browser at the following url:
```
http://localhost:8000
```

### To Stop server

Pressing ctrl+c will shutdown the server and kill the instance.

```
^C
```
