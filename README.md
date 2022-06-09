# Rails Flickr API

A small project for working with a 3rd party API (in this case, [flickr](https://www.flickr.com/)) in the context of a Rails web app.

## Description

This app works with the [flickr gem](https://github.com/cyclotron3k/flickr) to interact with the [flickr](https://www.flickr.com/)) API. The app is just a single webpage where a user can enter their flickr user ID and then have the page filled with photos from their photostream.

This was a small-scale project to practice working with 3rd party APIs. I also gained experience with using an API wrapper library with the flickr gem.

## How to Use / Install

Have the following prerequisites:
```
Ruby >= 3.0.3
Rails >= 7.0.2
Bundler >= 2.2.32
PostgreSQL >= 12.9
```
Clone this repo, `cd` into the project's root, and enter the following commands:
```sh
bundle install
bin/setup
bin/dev
```
The site will be served at http://localhost:3000/

## Special Thanks

- To the maintainers of the [flickr gem](https://github.com/cyclotron3k/flickr)
