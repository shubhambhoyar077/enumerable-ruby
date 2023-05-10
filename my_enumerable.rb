module MyEnumerable
  def all?
    result = true
    each do |list_item|
      return 'Please add block' unless block_given?

      result = false unless yield list_item
    end
    result
  end

  def any?
    result = false
    each do |list_item|
      return 'Please add block' unless block_given?

      result = true if yield list_item
    end
    result
  end

  def filter
    result = []
    each do |list_item|
      return 'Please add block' unless block_given?

      result.push(list_item) if yield list_item
    end
    result
  end
end
