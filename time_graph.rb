# Time Graph

class TimeGraph < Processing::App

  def setup
  end
  
  def draw
    background 0
    stroke 125
    hour
    minute
    second
    milli
  end
  
  def hour
    hour = Time.now.hour
    fill 255, 255, 255, hour+60+300/255
    rect 0, 0, 200, hour*25
  end

  def minute
    minute = Time.now.min
    fill 255, 255, 255, minute+300/255
    rect 200, 0, 200, minute*10
  end

  def second
    second = Time.now.sec
    fill 255, 255, 255, second+300/255
    rect 400, 0, 200, second*10
  end

  def milli
    milli = Time.now.usec / 10000
    fill 255, 255, 255, milli+300/255
    rect 600, 0, 200, milli*6
  end

end


TimeGraph.new :title => "Time Graph", :width => 800, :height => 600