module ApplicationHelper

  def nav_link(link_text, link_path, class_names)
    active_class = current_page?(link_path) ? 'active' : ''
    link_to link_text, link_path, class: "#{class_names} #{active_class}"
  end

end
