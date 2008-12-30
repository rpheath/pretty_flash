require 'pretty_flash'

ActionController::Base.send(:include, RPH::PrettyFlash::ControllerMethods)
ActionView::Base.send(:include, RPH::PrettyFlash::Display)