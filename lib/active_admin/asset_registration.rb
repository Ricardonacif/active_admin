module ActiveAdmin
  module AssetRegistration

    def register_stylesheet(paths, options = {})
      if paths.is_a? Array
        paths.each { |path| stylesheets[path] = options } 
      else
        stylesheets[paths] = options
      end
      
    end

    def stylesheets
      @stylesheets ||= {}
    end

    def clear_stylesheets!
      @stylesheets = {}
    end

    def register_javascript(names)
      if names.is_a? Array
        javascripts.merge names
      else
        javascripts.add names
      end
    end

    def javascripts
      @javascripts ||= Set.new
    end

    def clear_javascripts!
      @javascripts = Set.new
    end

  end
end
