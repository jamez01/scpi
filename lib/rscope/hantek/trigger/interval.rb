# frozen_string_literal: true

module RScope
  class Interval
    def alevel(value)
      Device.write(prefix, 'ALEVEL', value)
      value
    end

    def alevel?
      Device.write_r(prefix, 'ALEVEL?')
    end

    def slop(value)
      Device.write(prefix, 'SLOP', value)
      value
    end

    def slop?
      Device.write_r(prefix, 'SLOP?')
    end

    def source(value)
      Device.write(prefix, 'SOURCE', value)
      value
    end

    def source?
      Device.write_r(prefix, 'SOURCE?')
    end

    def time(value)
      Device.write(prefix, 'TIME', value)
      value
    end

    def time?
      Device.write_r(prefix, 'TIME?')
    end

    def when(value)
      Device.write(prefix, 'WHEN', value)
      value
    end

    def when?
      Device.write_r(prefix, 'WHEN?')
    end

    private

    def prefix
      'trigger:interval:'
    end
  end
end
