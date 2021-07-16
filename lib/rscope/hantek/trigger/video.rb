# frozen_string_literal: true

module RScope
  class Video
    def level(value)
      Device.write(prefix, 'LEVEL', value)
      value
    end

    def level?
      Device.write_r(prefix, 'LEVEL?')
    end

    private

    def prefix
      'trigger:video:'
    end
  end
end
