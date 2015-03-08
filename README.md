# better-initialize

A friendlier, dependency-free initialize method for ruby objects.

## Usage

Gemfile:

    gem 'better-initialize',
      github: 'huned/better-initialize'

Code:

    require 'better_initialize'

    class Pizza
      include BetterInitialize
      attr_accessor :size, :toppings
    end

    # Instantiate with attributes.
    Pizza.new(size: :large, toppings: %i[mushrooms peppers])

    # Instantiate with attributes and a block.
    Pizza.new(size: :large) do |pizza|
      pizza.toppings = %w[mushrooms peppers]
      Oven.bake!(pizza)
    end

## Development Environment (OSX)

    brew install rbenv ruby-build
    git clone git@github.com:huned/better-initialize
    rbenv install -k `cat .ruby-version`
    bundle exec ruby test/run.rb
