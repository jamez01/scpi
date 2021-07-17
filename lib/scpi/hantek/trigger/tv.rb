# frozen_string_literal: true

module SCPI
  class Tv
    def line(value)
      Device.write(prefix, 'LINE', value)
      value
    end

    def line?
      Device.write_r(prefix, 'LINE?')
    end

    def mode(value)
      Device.write(prefix, 'MODE', value)
      value
    end

    def mode?
      Device.write_r(prefix, 'MODE?')
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

    def standard(value)
      Device.write(prefix, 'STANDARD', value)
      value
    end

    def standard?
      Device.write_r(prefix, 'STANDARD?')
    end

    private

    def prefix
      'trigger:tv:'
    end
  end
end
