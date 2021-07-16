# frozen_string_literal: true

module RScope
  class Slope
    def alevel(value)
      Device.write(prefix, 'ALEVEL', value)
      value
    end

    def alevel?
      Device.write_r(prefix, 'ALEVEL?')
    end

    def blevel(value)
      Device.write(prefix, 'BLEVEL', value)
      value
    end

    def blevel?
      Device.write_r(prefix, 'BLEVEL?')
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

    def when(value)
      Device.write(prefix, 'WHEN', value)
      value
    end

    def when?
      Device.write_r(prefix, 'WHEN?')
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
      'trigger:slope:'
    end
  end
end
