require 'pry'

module Putin
  module Loader
    def welcome_message
      "Welcome to the devloper console."
    end

    def start
      output welcome_message

      Pry.start
    end

    def reload_message
      'Reloading...'
    end

    def reload
      output reload_message

      Pry.save_history

      exec('putin')
    end

    def output(message, format = :ruby)
      io.puts(CodeRay.scan(message, format).term)
    end

    def io
      @output_stream ||= STDOUT
    end
  end
end
