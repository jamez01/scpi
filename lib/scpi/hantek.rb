# frozen_string_literal: true

require 'scpi/hantek/acquire'
require 'scpi/hantek/channel'
require 'scpi/hantek/timebase'
require 'scpi/hantek/trigger'

module SCPI
  class InvalidParam < StandardError; end

  # Abstraction class for device
  class Hantek < Basic
    def channel(chan)
      @channels ||= {}
      @channels[chan] ||= HantekChannel.new(chan)
      @channels[chan]
    end

    def timebase
      @timebase ||= Timebase.new
    end

    def acquire
      @acquire ||= Acquire.new
    end

    def trigger
      @trigger ||= Trigger.new
    end
  end
end
