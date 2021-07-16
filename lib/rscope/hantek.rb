# frozen_string_literal: true

require 'rscope/hantek/acquire'
require 'rscope/hantek/channel'
require 'rscope/hantek/timebase'
require 'rscope/hantek/trigger'

module RScope
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
