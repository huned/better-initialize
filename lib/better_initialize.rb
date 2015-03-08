require_relative 'better_initialize/version'

module BetterInitialize
  def initialize(params = {})
    params.each do |k, v|
      m = "#{k}="
      send(m, v) if respond_to?(m)
    end
    yield(self) if block_given?
  end
end
