module Sightreader
  class Pattern

    attr_accessor :rhythm
    attr_reader :bars

    def initialize(options = {})
      @rhythm = []
      bars = options[:bars]
      @bars = options[:bars]
    end

    def bars=(number_of_bars)
      @rhythm = [('-' * 16) * number_of_bars]
      @bars = number_of_bars
    end

  end
end