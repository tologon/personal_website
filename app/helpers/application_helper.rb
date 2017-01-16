module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Tologon Eshimkanov"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def header_menus(option = '')
    header_menus = {projects: 'Projects', resume: 'Resume', contact: 'Contact'}
    header_menus[option]
  end
end
