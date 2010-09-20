class AutoresizeTextareaExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/autoresize_textarea"
  
  
  def activate
    Admin::ResourceController.send :include, AutoResizeInterface
  end
end
