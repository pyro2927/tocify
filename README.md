# Tocify

Tocify aims to create a table of contents for your markdown files.  By default the generated ToC will be dumped to STDOUT.  Add the `-i` or `--inject` flag to put the table of contents back into your file.

## Table of Contents
* [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)

## Installation

Add this line to your application's Gemfile:

    gem 'tocify'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tocify

## Usage

By default tocify will check for a file named `README.md` in the current directory.

    tocify

Otherwise you can pass in a filename as a parameter.

    tocify OTHERFILE.md

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
