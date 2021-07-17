# frozen_string_literal: true

module SCPI
  module SubCommands
    class Timeout
      def level(value)
        Device.write(prefix, 'LEVEL', value)
        value
      end

      def level?
        Device.write_r(prefix, 'LEVEL?')
      end

      def polarity(value)
        Device.write(prefix, 'POLARITY', value)
        value
      end

      def polarity?
        Device.write_r(prefix, 'POLARITY?')
      end

      def source(value)
        Device.write(prefix, 'SOURCE', value)
        value
      end

      def source?
        Device.write_r(prefix, 'SOURCE?')
      end

      def width(value)
        Device.write(prefix, 'WIDTH', value)
        value
      end

      def width?
        Device.write_r(prefix, 'WIDTH?')
      end

      private

      def prefix
        'trigger:timeout:'
      end
    end
  end
end
