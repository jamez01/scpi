# frozen_string_literal: true

module RScope
  class Spi
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

    def data(value)
      Device.write(prefix, 'DATA', value)
      value
    end

    def data?
      Device.write_r(prefix, 'DATA?')
    end

    def mask(value)
      Device.write(prefix, 'MASK', value)
      value
    end

    def mask?
      Device.write_r(prefix, 'MASK?')
    end

    def sck(value)
      Device.write(prefix, 'SCK', value)
      value
    end

    def sck?
      Device.write_r(prefix, 'SCK?')
    end

    def scl(value)
      Device.write(prefix, 'SCL', value)
      value
    end

    def scl(value)
      Device.write(prefix, 'SCL', value)
      value
    end

    def sda(value)
      Device.write(prefix, 'SDA', value)
      value
    end

    def sda(value)
      Device.write(prefix, 'SDA', value)
      value
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
      'trigger:spi:'
    end
  end
end
