module AutoResizeInterface
  def self.included(base)
    base.class_eval {
      before_filter :add_auto_resize, :only => [:edit, :new]
      include InstanceMethods
    }
  end

  module InstanceMethods
    def add_auto_resize
      include_javascript 'admin/auto_resize.js'
    end
  end
end
