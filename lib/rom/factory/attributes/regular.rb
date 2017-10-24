module ROM::Factory
  module Attributes
    # @api private
    class Regular
      attr_reader :name, :value

      # @api private
      def initialize(name, value)
        @name = name
        @value = value
      end

      # @api private
      def call(attrs = {})
        return if attrs.key?(name)

        { name => value }
      end

      # @api private
      def value?
        true
      end

      # @api private
      def dependency?(*)
        false
      end

      # @api private
      def dependency_names
        []
      end
    end
  end
end
