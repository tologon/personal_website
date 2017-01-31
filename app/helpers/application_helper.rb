module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Tologon Eshimkanov"
    page_title.blank? ? base_title : "#{page_title} | #{base_title}"
  end

  def header_menus(option = '')
    header_menus = {intro: 'Intro', projects: 'Projects', contact: 'Contact'}
    header_menus[option]
  end
end
