# frozen_string_literal: true

module RScope
  class Lin
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

    private

    def prefix
      'trigger:lin:'
    end
  end
end
