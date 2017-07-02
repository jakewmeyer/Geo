<div align="center">

![Imgur](http://i.imgur.com/Jk3L3EO.png)

# Geo
### A simple Bash utility for wan, lan, router, dns, mac, and ip geodata, with clean output for piping

[![GitHub release](https://img.shields.io/github/release/jakewmeyer/Geo.svg)]()
[![Build Status](https://travis-ci.org/jakewmeyer/Geo.svg?branch=master)](https://travis-ci.org/jakewmeyer/Geo)
[![Test Coverage](https://codeclimate.com/github/codeclimate/codeclimate/badges/coverage.svg)](https://codeclimate.com/github/jakewmeyer/Geo/coverage)
[![Platform](https://img.shields.io/badge/platform-MacOS%20%2B%20Linux-blue.svg)]()
[![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()

</div>

## Install / Setup

**Linux Dependanices**

* [Dnsutils](https://packages.debian.org/jessie/dnsutils) is required for WAN search on Linux

**MacOS/Linux**
* [https://github.com/jakewmeyer/Geo/archive/v0.1.9.tar.gz](https://github.com/jakewmeyer/Geo/archive/v0.1.9.tar.gz)

```bash
=> ./geo -w

=> 12.23.56.78
```

## Usage

![Imgur](http://i.imgur.com/PdMSk8w.png)

## Performance
**Original [netgeo](https://github.com/jakewmeyer/Ruby-Scripts) script written in Ruby vs new ```geo``` util written in Bash**

**Execution time in seconds => a 1349.06% improvement** :ok_hand: :chart_with_upwards_trend:

![Imgur](http://i.imgur.com/aAtNFel.png)

## Testing
Install `bats` and execute `bats test/*`

## FAQ's / Contact
* If you run into any issues, please open an issue ASAP and I'll work to get it resolved and merged.
* Terminal used is [Hyper.js](https://hyper.is/) -> Background Color: #292937
* Using [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh), Robby Russell theme, [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting), and [zsh_autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
