# Example Codeception implementation for Codeship

Illustrating Codeception output and how it interacts with the Codeship UI.

There are currently two branches:

* master: Codeception with default ansi output.
* CodeceptionNoAnsi: Codeception with the "--no-ansi" parameter, which tweaks its output slightly.

You can run Codeception's native testing behavior with:

```
docker build -t example .
docker run --rm -t example vendor/bin/codecept run
```

There are intentional sleep statements included on some tests to illustrate how Codeception manipulates the terminal output during its run.
