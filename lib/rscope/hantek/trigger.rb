# frozen_string_literal: true
require 'rscope/hantek/trigger/can'
require 'rscope/hantek/trigger/edge'
require 'rscope/hantek/trigger/iic'
require 'rscope/hantek/trigger/interval'
require 'rscope/hantek/trigger/lin'
require 'rscope/hantek/trigger/pattern'
require 'rscope/hantek/trigger/pulse'
require 'rscope/hantek/trigger/sope'
require 'rscope/hantek/trigger/spi'
require 'rscope/hantek/trigger/timeout'
require 'rscope/hantek/trigger/tv'
require 'rscope/hantek/trigger/uart'
require 'rscope/hantek/trigger/under_am'
require 'rscope/hantek/trigger/window'

module RScope
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
      raise RScope::InvalidParam unless %i[edge pulse tv slope timeout window pattern interval
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
      raise RScope::InvalidParam unless %i[auto normal single].include? value

      Device.write(prefix, 'SWEEP', value.to_s.upcase)
      value
    end

    def holdoff?
      Device.write_r(prefix, 'HOLDOFF?')
    end

    def holdoff(value)
      raise RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'HOLDOFF', value)
    end
    private

    def prefix
      'TRIGGER:'
    end
  end
end
