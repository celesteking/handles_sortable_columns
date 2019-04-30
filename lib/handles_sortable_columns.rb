
require 'handles/sortable_columns'

module Handles
  module SortableColumns
    class Railtie < Rails::Railtie
      initializer "handles_sortable_columns" do |app|
        ActiveSupport.on_load :action_controller_base do |base|
          base.extend ::Handles::SortableColumns::ControllerClassMethods
        end
      end
    end
  end
end
