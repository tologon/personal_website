module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    page_title.blank? ? Settings.name : "#{page_title} | #{Settings.name}"
  end

  def flat_hash(h,f=[],g={})
    return g.update({ f=>h }) unless h.is_a? Hash
    h.each { |k,r| flat_hash(r,f+[k],g) }
    g
  end

  def restrict_size(value, length = 100)
    truncate(value.to_s, length: length)
  end
end
