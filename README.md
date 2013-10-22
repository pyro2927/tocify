# Tocify

Tocify aims to create a table of contents for your markdown files.  By default the generated ToC will be dumped to STDOUT.  Add the `-i` or `--inject` flag to put the table of contents back into your file.

## Table of Contents
* [Installation](#installation)
* [Usage](#usage)
* [Sample Output](#sample-output)
* [Manual Insertion](#manual-insertion)
    * [OS X](#os-x)
    * [Linux](#linux)
* [Contributing](#contributing)

_Generated with [tocify](https://github.com/pyro2927/tocify)_

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
 
To automatically insert the ToC into your README, run

    tocify -i

## Sample Output
 
When running `tocify` on this file, you get:

    ## Table of Contents
    * [Installation](#installation)
    * [Usage](#usage)
    * [Sample Output](#sample-output)
    * [Manual Insertion](#manual-insertion)
        * [OS X](#os-x)
        * [Linux](#linux)
    * [Contributing](#contributing)

## Manual Insertion

If you want to manually insert the generated ToC you can.  An easy way is to pipe the output of `tocify` into your paste bufffer.

### OS X

    tocify | pbcopy

### Linux

    tocify | xclip

_Requires xclip to be installed_
 
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
