# frozen_string_literal: true

module SCPI
  module Device
    def open(adrs = 0)
      puts "Opening usbtmc#{adrs}"
      @port = File.open("/dev/usbtmc#{adrs}", 'r+')
    end

    def close
      @port.close
    end

    def write(prefix, command = '', str = '')
      puts "SENDING: #{prefix}#{command} #{str}"
      Timeout.timeout(1) do
        @port.write(sprintf("#{prefix}#{command} #{str}"))
        @port.flush
      end
    rescue TimeoutError
      puts "write timeout error at #{Time.now} on USB with '#{str}'"
    end

    def listen(n = 256)
      Timeout.timeout(1) do
        resp = @port.readpartial(n)
        puts "RESPONSE: #{resp}"
        resp
      end
    rescue TimeoutError
      puts "read timeout error at #{Time.now} on USB"
    end

    def write_r(prefix, command = '', str = '', n = 256)
      write(prefix, command, str)
      listen(n)
    end

    module_function :open, :close, :write, :listen, :write_r
  end
end
