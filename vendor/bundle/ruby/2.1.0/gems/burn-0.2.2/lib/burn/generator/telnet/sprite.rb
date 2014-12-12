module Burn
  module Generator
    module Telnet
      class Sprite
        attr_accessor :name, :tile, :x, :y, :frame, :is_appear

        def initialize(name, tile, x, y)
          @name = name
          @tile = tile
          @x = x
          @y = y
          @frame = nil
          @is_appear = false
        end

      end
    end
  end
end
