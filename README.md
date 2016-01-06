# Docker Sauce Labs Connect

This docker image runs [Sauce Labs Connect](https://docs.saucelabs.com/reference/sauce-connect/) 4.3 on Java 8.


## Versions

* 4.3, latest


## Usage

Use it in the `FROM` instruction.

```
FROM ustwo/docker-sauce-connect
# your instructions
```

Or as a single run

```sh
docker run –name sc -d \
  -p 0.0.0.0:8000:8000 \
  -e SAUCE_USERNAME=foobar \
  -e SAUCE_ACCESS_KEY=00000000-0000-0000-0000-000000000000 \
  ustwo/docker-sauce-connect
```


## Maintainers

* [Arnau Siches](mailto:arnau@ustwo.com)
