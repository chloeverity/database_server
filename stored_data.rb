# frozen_string_literal: true

class StoredData
  attr_reader :data

  def initialize
    @data = {}
  end

  def set_data(key, value)
    @data[key] = value
  end

  def get_data(key)
    @data[key]
  end
end
