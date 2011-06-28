class Array

  def to_abbr_series(options={})
    case length
    when 0
      ""
    when 1
      self[0].to_s
    when 2, 3
      self.join(', ')
    else
      self[0..1].join(', ').to_s + ', ..., ' + self[-1].to_s
    end
  end

  def to_abbr_set(options={}, &to_s)
    return '' if self.empty?
    to_s ||= lambda{|e| e}
    ci = 0
    consecutive_sets = [[self.shift]]

    self.each_with_index do |e,i|
      if e <= consecutive_sets[ci].last + 1
        consecutive_sets[ci] << e
      else
        ci+=1
        consecutive_sets[ci] = [e]
      end
    end

    consecutive_sets.map{|s| s.map{|e| to_s.call(e)}}.map{|s| s.size > 2 ? "#{s[0]}-#{s[-1]}" : s.join(', ') }.join(', ')

  end

end
