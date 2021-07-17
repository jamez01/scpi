# frozen_string_literal: true

module SCPI
  class Pattern
    def level(value)
      Device.write(prefix, 'LEVEL', value)
      value
    end

    def pattern(value)
      Device.write(prefix, 'PATTERN', value)
      value
    end

    private

    def prefix
      'trigger:pattern:'
    end
  end
end
