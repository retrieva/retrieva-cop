# Retrieva::Cop

Retrieva::Cop is a RuboCop configuration gem for Retrieva, inc.
Highly inspiered by [onkcop](https://github.com/onk/onkcop/) and [deka_eiwakun](https://github.com/esminc/deka_eiwakun/)

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem "retrieva-cop", require: false
end
```

## Usage

Add the following directive to your `.rubocop.yml`:

```yaml
inherit_gem:
  retrieva-cop:
    - "config/rubocop.yml"
    # comment unless use rails cops
    - "config/rails.yml"
    # comment unless use rspec cops
    - "config/rspec.yml"

AllCops:
  TargetRubyVersion: 2.4
  # comment unless use rails cops
  TargetRailsVersion: 5.1
```

```
bundle exec rubocop <options...>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/retrieva/retrieva-cop.
