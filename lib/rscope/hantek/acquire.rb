# frozen_string_literal: true

module RScope
  class Acquire
    def points?
      Device.write_r(prefix, 'POINTS?')
    end

    def points(value)
      raise RScope::InvalidParam unless [4000, 40_000, 400_000, 4_000_000, 8_000_000].include? value

      Device.write(prefix, 'POINTS', value)
      value
    end

    def type?
      Device.write_r(prefix, 'TYPE?').downcase.to_sym
    end

    def type(value)
      rails RScope::InvalidParam unless %i[normal average peak hres].include? value
      Device.write(prefix, 'TYPE', value.to_s.upcase)
      value
    end

    def sample_rate?
      Device.write_r(prefix, 'SRATE?')
    end

    def count?
      Device.write_r(prefix, 'COUNT?')
    end

    def count(value)
      raise RScope::InvalidParam unless [4, 8, 16, 32, 64, 128].include? value

      Device.write(prefix, 'COUNT', value)
      value
    end

    private

    def prefix
      'ACQUIRE:'
    end
  end
end
