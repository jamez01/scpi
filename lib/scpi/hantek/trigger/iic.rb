# frozen_string_literal: true

module SCPI
  class Iic
    def adder(value)
      Device.write(prefix, 'ADDER', value)
      value
    end

    def adder?
      Device.write_r(prefix, 'ADDER?')
    end

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

    private

    def prefix
      'trigger:iic:'
    end
  end
end
