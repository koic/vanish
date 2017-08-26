# vanish [![Build Status](https://travis-ci.org/koic/vanish.svg)](https://travis-ci.org/koic/vanish) [![Gem Version](https://badge.fury.io/rb/vanish.svg)](http://badge.fury.io/rb/vanish) [![git.legal](https://git.legal/projects/3962/badge.svg "Number of libraries approved")](https://git.legal/projects/3962)

`vanish` removes the useless white space in the text file.

## Installation

```sh
% gem install vanish
```

## Usage

Display the contents to apply vanish command on standard output.

```sh
% vanish
```

It corrects automatically by vanish command.

```sh
% vanish -a
```

or

```sh
% vanish --auto-correct
```

As a result, remove blank lines at the top and bottom of the file and a white space at the end of line.


```diff
-
-
  def say
-   puts 'hello'  
+   puts 'hello'
  end
-
-
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/koic/vanish.

## License

vanish is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
