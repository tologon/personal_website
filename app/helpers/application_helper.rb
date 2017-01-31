module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    page_title.blank? ? Settings.name : "#{page_title} | #{Settings.name}"
  end
end
