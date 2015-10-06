require "maybe_hash/version"

class MaybeHash

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def method_missing(attribute)
    self.class.new(choose_value(attribute))
  end

  private

    def choose_value(attribute)
      if respond_to_methods?(:[], :keys, :values)
        @value[attribute]
      elsif @value.respond_to?(attribute)
        @value.send(attribute)
      else
        nil
      end
    end

    def respond_to_methods?(*list)
      list.all? do |name|
        @value.respond_to?(name)
      end
    end

end
