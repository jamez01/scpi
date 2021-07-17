# frozen_string_literal: true

module SCPI
  class Window
    def alevel(value)
      Device.write(prefix, 'ALEVEL', value)
      value
    end

    def blevel(value)
      Device.write(prefix, 'BLEVEL', value)
      value
    end

    def blevel?
      Device.write_r(prefix, 'BLEVEL?')
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
      'trigger:window:'
    end
  end
end
