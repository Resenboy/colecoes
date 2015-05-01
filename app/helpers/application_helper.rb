module ApplicationHelper
  def is_active?(controller)
    return 'active' if controller == 'collections' && controller_name == 'items'

    controller == controller_name ? 'active' : ''
  end
end
