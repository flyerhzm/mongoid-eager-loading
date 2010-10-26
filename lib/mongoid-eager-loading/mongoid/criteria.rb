Mongoid::Criteria.class_eval do
  include Mongoid::Criterion::EagerLoading

  alias_method :origin_each, :each

  def each(&block)
    if @eager_loadings
      # if eager loadings are used, preload the associations.
      docs = []
      context.iterate { |doc| docs << doc }
      preload(docs)
      docs.each(&block)
      self
    else
      origin_each(&block)
    end
  end
end
