module Bithour
  class Day
    def initialize
      @day = 0
    end

    def add(first_hour, last_hour)
      update(first_hour, last_hour, "1")
    end

    def include?(hour)
      @day[hour] == 1
    end

    private
    def update(first_hour, last_hour, bit)
      hours = "%024d" % @day.to_s(2)
      hours.reverse!
      first_hour.upto(last_hour) do |i|
        hours[i] = bit
      end
      @day = hours.reverse.to_i(2)
    end
  end
end
