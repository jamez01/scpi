# frozen_string_literal: true

module SCPI
  class Basic
    def initialize(adrs = 0)
      Device.open(adrs)
    end

    def idn
      Device.write('*IDN?')
      Device.listen
    end
  end
end
