# frozen_string_literal: true

module SCPI
  module SubCommands
    class Edge
      def level(value)
        Device.write(prefix, 'LEVEL', value)
        value
      end

      def level?
        Device.write_r(prefix, 'LEVEL?')
      end

      def slope(value)
        Device.write(prefix, 'SLOPE', value)
        value
      end

      def slope?
        Device.write_r(prefix, 'SLOPE?')
      end

      def source(value)
        Device.write(prefix, 'SOURCE', value)
        value
      end

      def source?
        Device.write_r(prefix, 'SOURCE?')
      end

      private

      def prefix
        'trigger:edge:'
      end
    end
  end
end