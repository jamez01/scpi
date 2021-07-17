# frozen_string_literal: true

require 'scpi/hantek/trigger/can'
require 'scpi/hantek/trigger/edge'
require 'scpi/hantek/trigger/iic'
require 'scpi/hantek/trigger/interval'
require 'scpi/hantek/trigger/lin'
require 'scpi/hantek/trigger/pattern'
require 'scpi/hantek/trigger/pulse'
require 'scpi/hantek/trigger/slope'
require 'scpi/hantek/trigger/spi'
require 'scpi/hantek/trigger/timeout'
require 'scpi/hantek/trigger/tv'
require 'scpi/hantek/trigger/uart'
require 'scpi/hantek/trigger/under_am'
require 'scpi/hantek/trigger/window'

module SCPI
  class Trigger
    include Helpers
    def force
      device.write(prefix, 'FORCE')
      true
    end

    def mode?
      Device.write_r(prefix, 'MODE?').downcase.to_sym
    end

    def mode(value)
      raise SCPI::InvalidParam unless %i[edge pulse tv slope timeout window pattern interval
                                           underthrow uart lin can spi iic].include? value

      Device.write(prefix, 'MODE', value.upcase.to_sym)
      value
    end

    def status?
      Device.write_r(prefix, 'STATUS?').downcase.to_sym
    end

    def sweep?
      Device.write_r(prefix, 'SWEEP?').downcase.to_sym
    end

    def sweep(value)
      raise SCPI::InvalidParam unless %i[auto normal single].include? value

      Device.write(prefix, 'SWEEP', value.to_s.upcase)
      value
    end

    def holdoff?
      Device.write_r(prefix, 'HOLDOFF?')
    end

    def holdoff(value)
      raise SCPI::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'HOLDOFF', value)
    end

    def edge
      @edge ||= SubCommands::Edge.new
    end

    private

    def prefix
      'TRIGGER:'
    end
  end
end
