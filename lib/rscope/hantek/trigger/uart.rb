# frozen_string_literal: true

module RScope
  class Uart
    def alevel(value)
      Device.write(prefix, 'ALEVEL', value)
      value
    end

    def alevel?
      Device.write_r(prefix, 'ALEVEL?')
    end

    def baud(value)
      Device.write(prefix, 'BAUD', value)
      value
    end

    def baud?
      Device.write_r(prefix, 'BAUD?')
    end

    def condition(value)
      Device.write(prefix, 'CONDITION', value)
      value
    end

    def condition?
      Device.write_r(prefix, 'CONDITION?')
    end

    def data(value)
      Device.write(prefix, 'DATA', value)
      value
    end

    def data?
      Device.write_r(prefix, 'DATA?')
    end

    def parity(value)
      Device.write(prefix, 'PARITY', value)
      value
    end

    def parity?
      Device.write_r(prefix, 'PARITY?')
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
      'trigger:uart:'
    end
  end
end
