# Docker Sauce Labs Connect

This docker image runs [Sauce Labs Connect](https://wiki.saucelabs.com/display/DOCS/Sauce+Connect+Proxy) 4.4.6 on Java 8.


## Versions

* 4.4, latest
* 4.3

## Usage

It sets the `sc` CLI as the entrypoint so it can be used as a replacement via
an shell alias:

```sh
$ alias sc="docker run --rm -it -p 8000:8000 ustwo/sauce-connect"
$ sc -P 8000 -u $SAUCE_USERNAME -k $SAUCE_ACCESS_KEY
```

Or just

```sh
$ docker run --rm -it \
             -p 0.0.0.0:8000:8000 \
             ustwo/sauce-connect -P 8000 \
                                 -u $SAUCE_USERNAME \
                                 -k $SAUCE_ACCESS_KEY \
                                 --tunnel-identifier foo
```

## Contact

* open.source@ustwo.com


## Maintainers

* Arnau Siches (@arnau)


## License

There is no guarantee of active maintenance. Licensed under [MIT](./LICENSE).
