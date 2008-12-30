module RPH
  module PrettyFlash
    module ControllerMethods
      def notice(msg)
        flash[:notice] = msg
      end
    
      def warning(msg)
        flash[:warning] = msg
      end
    
      def error(msg)
        flash[:error] = msg
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