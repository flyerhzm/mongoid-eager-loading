Mongoid::Finders.class_eval do
  def includes(*args)
    criteria.send(:includes, *args)
  end
end
