module RPH
  module PrettyFlash
    module ControllerMethods
      TYPES = [:notice, :warning, :error]
      
      TYPES.each do |type|
        define_method(type) do |msg|
          flash[type] = msg
        end
        
        define_method("#{type}_now") do |msg|
          flash.now[type] = msg
        end
      end
    end
  
    module Display
      def display_flash_messages
        returning html = String.new do
          flash.each do |css_class, message|
            html << content_tag(:p, content_tag(:span, nil) + message, :class => css_class)
          end
        end
      end
    end
  end
end