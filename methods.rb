class String

def ruby_safeguard

  if !self.include? ' - - '
    return true
  end

  return false
  end

end
