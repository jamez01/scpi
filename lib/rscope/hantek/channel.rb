# frozen_string_literal: true

module RScope
  # Hantek Scope Tested on DSO2D15
  class HantekChannel
    include RScope::Helpers

    def initialize(channel)
      @chan = channel
    end

    def bwlimit?
      Device.write_r(prefix, 'BWLimit?') == '1'
    end

    def bwlimit(limit)
      Device.write(prefix, "BWLimit #{bool_to_state(limit)}")
      limit
    end

    def coupling?
      Device.write_r(prefix, 'COUPLING?').downcase.to_sym
    end

    def coupling(state)
      return RScope::InvalidParam unless %i[ac dc gnd].include? state

      Device.write(prefix, "COUPLING #{state.to_s.upcase}")
      state.upcase
    end

    def display?
      Device.write_r(prefix, 'DISPLAY?') == '1'
    end

    def display(state)
      Device.write(prefix, "DISPLAY #{bool_to_state(state)}")
      state
    end

    def invert?
      Device.write_r(prefix, 'INVERT?') == '1'
    end

    def invert(state)
      Device.write(prefix, "INVERT #{bool_to_state(state)}")
      state
    end

    def offset?
      Device.write_r(prefix, 'OFFSET?')
    end

    def offset(value, suffix = 'V')
      return RScope::InvalidParam unless %w[V mV].include?(suffix)
      return RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, "OFFSET #{BigDecimal(value.to_f, 3)} #{suffix}")
      value.to_f
    end

    def scale?
      nr3_to_f(Device.write_r(prefix, 'SCALE?'))
    end

    def scale(value, suffix = 'V')
      return RScope::InvalidParam unless %w[V mV].include?(suffix)
      return RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, "SCALE #{to_nr3(value.to_f)} #{suffix}")
      value.to_f
    end

    def probe?
      nr3_to_f(Device.write_r(prefix, 'PROBE?'))
    end

    def probe(value)
      Device.write(prefix, "PROBE #{to_nr3(value.to_f)}")
      value.to_f
    end

    def vernier?
      state_to_bool Device.write_r(prefix, 'VERNIER?')
    end

    def vernier(state)
      Device.write(prefix, "VERNIER #{bool_to_state(state)}")
      state
    end

    private

    def prefix
      "CHANNEL#{@chan}:"
    end
  end
end
