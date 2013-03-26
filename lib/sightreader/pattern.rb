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
      @rhythm = []
      (number_of_bars-1) * 16 + 1.times do
        add_bar
      end
      @bars = number_of_bars
    end

    def add_bar
      @rhythm << ['-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-']
    end

    def toggle_beat(bar, beat)
      if @rhythm[bar-1][beat-1] == '-'
        @rhythm[bar-1][beat-1] = 'x'
      else
        @rhythm[bar-1][beat-1] = '-'
      end
    end

  end
end