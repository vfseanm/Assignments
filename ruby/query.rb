class Filter
  def self.key
    :filter
  end

  def initialize(filters)
    @filters = filters
  end

  def apply(data)
  data.select do |element|
    @filters.all? do |field, conditions|
      conditions.all? do |filter, value|
        self.send filter, element, field, value
      end
    end 
  end
end

def gt(element, field, value)
  element[field] > value
end

def lt(element, field, value)
  element[field] < value
end

def gte(element, field, value)
  element[field] >= value
end

def lte(element, field, value)
  element[field] <= value
end

def eq(element, field, value)
  element[field] == value
end

def neq(element, field, value)
  element[field] != value
end

def exists(element, field, value)
  element.hasKey? field
end

class SortBy 
  def self.key
    :sort_by
  end

  def initialize(field)
    @field = field
  end

  def apply(data)
  
  end


def queryClasses(data, criteria)
  [Filter, SortyBy, Limit, Select]. reduce(data) do { |data, operation|
    if criteria.hasKey? operation.key
      operation.new(criteria[operation.key]).apply(data)
    end
}
end
end
class SortBy 
  def self.key
    :sort_by
  end

  def initialize(field)
    @field = field
  end

  def apply(data)
  
  end


def queryClasses(data, criteria)
  [Filter, SortyBy, Limit, Select]. reduce(data) do { |data, operation|
    if criteria.hasKey? operation.key
      operation.new(criteria[operation.key]).apply(data)
    end
}
end
end
