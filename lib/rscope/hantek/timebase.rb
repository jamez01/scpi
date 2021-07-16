# frozen_string_literal: true

module RScope
  class Window
    include RScope::Helpers

    def enabled?
      state_to_bool Device.write_r(prefix, 'ENABLE?')
    end

    def enable(state)
      Device.write(prefix, "ENABLE #{bool_to_state(state)}")
      state
    end

    def position?
      nr3_to_f Device.write_r(prefix, 'POSITION?')
    end

    def position(value)
      raise RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'POSITION', to_nr3(value.to_f))
      value.to_f
    end

    def scale?
      nr3_to_f Device.write_r(prefix, 'SCALE?')
    end

    def scale(value)
      raise RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'SCALE', to_nr3(value.to_f))
      value.to_f
    end

    private

    # Command prefix
    def prefix
      'TIMEBASE:WINDOW:'
    end
  end

  class Timebase
    include RScope::Helpers

    def window
      @window ||= Window.new
    end

    def position?
      nr3_to_f Device.write_r(prefix, 'POSITION?')
    end

    def position(value)
      raise RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'POSITION', to_nr3(value.to_f))
      value.to_f
    end

    def scale?
      nr3_to_f Device.write_r(prefix, 'SCALE?')
    end

    def scale(value)
      raise RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'SCALE', to_nr3(value.to_f))
      value.to_f
    end

    def range?
      nr3_to_f Device.write_r(prefix, 'RANGE?')
    end

    def range(value)
      raise RScope::InvalidParam unless value.is_a?(Integer) || value.is_a?(Float)

      Device.write(prefix, 'RANGE', to_nr3(value.to_f))
      value.to_f
    end

    def mode?
      Device.write_r(prefix, 'MODE?').downcase.to_sym
    end

    def mode(value)
      rails RScope::InvalidParam unless %w[MAIN XY ROLL].incude?(value.upcase)

      Device.write(prefix, 'MODE', value)
      value
    end

    private

    def prefix
      'TIMEBASE:'
    end
  end
end
