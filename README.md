# Vanishing Vision

Vanishing Vision erases the useless white space in the text file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vanishing_vision'
```

And then execute:

```sh
% bundle
```

Or install it yourself as:

```sh
% gem install vanishing_vision
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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/koic/vanishing_vision.

## License

Vanishing Vision is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
