require 'pry'

module Putin
  module Helpers
    def reload
      Putin::Loader.reload
    end
  end
end
