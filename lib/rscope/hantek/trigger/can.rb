# frozen_string_literal: true

module RScope
  class Can
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

    def dlc(value)
      Device.write(prefix, 'DLC', value)
      value
    end

    def dlc?
      Device.write_r(prefix, 'DLC?')
    end

    def id(value)
      Device.write(prefix, 'ID', value)
      value
    end

    def id?
      Device.write_r(prefix, 'ID?')
    end

    def idle(value)
      Device.write(prefix, 'IDLE', value)
      value
    end

    def idle?
      Device.write_r(prefix, 'IDLE?')
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
      'trigger:can:'
    end
  end
end
