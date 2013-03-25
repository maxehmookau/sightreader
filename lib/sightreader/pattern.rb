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
      number_of_bars*16.times do
        @rhythm << '-'
      end
      @bars = number_of_bars
    end

    def toggle_beat(options = {})
      beat_to_toggle = (16 * (options[:bar] - 1) + options[:beat] - 1)
      if @rhythm[beat_to_toggle] == '-'
        @rhythm[beat_to_toggle] = 'x'
      else
        @rhythm[beat_to_toggle] = '-'
      end
    end

  end
end