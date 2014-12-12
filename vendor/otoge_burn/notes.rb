class Notes
  attr_accessor :name, :frame, :button

  def initialize(name, frame, button = :q)
    @name = name
    @frame = frame
    @button = button
  end

  def behave window_height
    <<EOH
if #{@frame}==frame then
  #{@name}.frame = #{@frame}
  if :#{@button}==:q then
    #{@name}.tile = red_notes.tile
  elsif :#{@button}==:d || :#{@button}==:f || :#{@button}==:j || :#{@button}==:k then
    #{@name}.tile = white_notes.tile
  elsif :#{@button}==:r || :#{@button}==:u || :#{@button}==:i then
    #{@name}.tile = blue_notes.tile
  end

  #{@name}.x = #{self.get_x_by_button(@button)}
  #{@name}.y = 0
  #{@name}.is_appear = true
  sprite "#{@name}"
end

if #{@frame} + #{window_height} >= frame && #{@frame} < frame then
  #{@name}.y += 1 if #{@name}.is_appear

  if #{@name}.is_appear then
    if is_pressed(:#{@button}) && (#{@name}.frame + #{window_height - 4} <= frame) && (#{@name}.frame + #{window_height - 2} >= frame) then
      combo.tile = (combo.tile.to_i + 1).to_s
      score.tile = (score.tile.to_i + 300).to_s
      timing.tile = (timing.tile + 'just!')
      #{@name}.is_appear = false
      #{@name}.tile = blank.tile
    elsif is_pressed(:#{@button}) && (#{@name}.frame + #{window_height - 5} <= frame) && (#{@name}.frame + #{window_height - 1} >= frame) then
      combo.tile = (combo.tile.to_i + 1).to_s
      score.tile = (score.tile.to_i + 100).to_s
      timing.tile = (timing.tile + 'great')
      #{@name}.is_appear = false
      #{@name}.tile = blank.tile
    end
  end

  if #{@name}.is_appear then
    if #{@name}.frame + #{window_height} == frame then
      combo.tile = '0'
      timing.tile = ' '
      #{@name}.is_appear = false
      #{@name}.tile = blank.tile
    end
  else
    if #{@name}.frame + #{window_height} == frame then
      timing.tile = ' '
    end
  end
end

EOH
  end

  def get_x_by_button button
    button_to_x = {
        q: 0,
        d: 5,
        r: 10,
        f: 15,
        u: 20,
        j: 25,
        i: 30,
        k: 35
    }

    button_to_x[button]
  end

  def get_button_by_id id
    buttons = [:q,:d,:r,:f,:u,:j,:i,:k]
    buttons[id]
  end
end
