# Sightreader

Create random sight reading patterns to sing/play/clap to.

[![Code Climate](https://codeclimate.com/github/maxehmookau/sightreader.png)](https://codeclimate.com/github/maxehmookau/sightreader)

## What is this?

**sightreader** is a Ruby gem which allows you to create random (or not so random) patterns of notes for the primary purpose of sight reading.

## How does it work?
### Installation
It's *really* easy to get started. 

Firstly, install the gem to your system:

    $ [sudo] gem install sightreader

or in your `Gemfile`

    gem 'sightreader'

and require it in your file: `require 'sightreader'`

###Usage
Then use it like so:

    pattern = Sightreader::Pattern.new # Create a pattern
    pattern.bars = 4                   # ...with 4 bars
    pattern.toggle_beat(1, 4)          # Change semiquaver 4 to be played

More to come....

###How does it work?
**Sightreader**'s main class is the `Pattern` which contains a `rhythm`. A rhythm looks like this...

    [['x', '-', '-'...'0'], ['x', '-'...]]

Where `x` is the start of a beat, `-` is the continuation of the previous beat and `0` is a rest.


**Obviously, in its current state, this form can only represent rhythm and not melody.** Hopefully that's yet to come.
This project is still in its very early stages so not everything will work as expected.
