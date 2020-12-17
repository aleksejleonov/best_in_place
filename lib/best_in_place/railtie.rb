module BestInPlace
  class Railtie < Rails::Railtie
    config.after_initialize do
      BestInPlace::ViewHelpers = ActionView::Base.respond_to?(:empty) ? ActionView::Base.empty : ActionView::Base.new
    end
  end
end
