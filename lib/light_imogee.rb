module LightImogee
  module ActionView
    def with_imogee(content)
      LightImogee::Data.get_imogee_map.each{|symbol,name| content.gsub!(/[^<]*(#{Regexp.escape(symbol)})[^>]*/, LightImogee::Data.get_imogee_for_symbol(symbol))}
      content.html_safe
    end
    ::ActionView::Base.send :include, self
  end

  class Data
    @@imogee_map = {
      ":)" => "grinning face",
      ":(" => "slightly frowning face",
      ":/" => "confused face",
      ":x" => "angry face",
      ":O" => "face with open mouth",
      ":'(" => "crying face",
      ":p" => "face with tongue"
    }

    @@imogee_type = 'browser'

    @@imogee = {}
    
    def self.get_imogee_map
      @@imogee_map
    end

    def self.set_imogee_type(type)
      @@imogee_type = type
      @@imogee = eval(File.open(File.join(File.dirname(__dir__), "lib/#{@@imogee_type}.rb")).read).to_h
    end

    def self.get_imogee
      @@imogee
    end

    def self.get_imogee_for_symbol(symbol)
      get_imogee_for(get_imogee_map[symbol])
    end

    def self.get_imogee_for(name)
      if @@imogee_type == 'browser'
        get_imogee[name]
      else
        %{<img class="light-imogee-image" src="#{get_imogee[name]}"/>}
      end
    end

    def self.add_imogee(map)
      @@imogee_map.merge!(map)
    end
  end
end