# frozen_string_literal: true

module RScope
  # Helper methods
  module Helpers
    def bool_to_state(state)
      case state
      when true
        'ON'
      when false
        'OFF'
      else
        raise RScope::InvalidParam
      end
    end

    def state_to_bool(state)
      case state
      when 'ON', '1'
        true
      when 'OFF', '0'
        false
      end
    end

    def to_nr3(value)
      BigDecimal(value.to_f, 5).to_s
    end

    def nr3_to_f(value)
      format('%f', value).to_f
    end
  end
end
