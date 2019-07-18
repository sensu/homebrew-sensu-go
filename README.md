# Sensu Go

Homebrew formula for installing [Sensu Go][1]

## General info

To install a formula:

```
brew update
brew tap sensu/sensu-go
```

Then:

```
brew install sensu-go
```

## Formulas

#### [`sensu-go`][1]

```
brew update
brew tap sensu/sensu-go
brew install sensu-go
```

Presently the tap will install `sensuctl` into your Homebrew path.

## TODO

* Install `sensu-agent` with an example `agent.yml` and launchctl plist configuration files

## Resources on setting up a homebrew tap

* https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/How-to-Create-and-Maintain-a-Tap.md
* http://formalfriday.club/2015/01/05/creating-your-own-homebrew-tap-and-formula.html

[1]: https://github.com/sensu/sensu-go
