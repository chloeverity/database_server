# frozen_string_literal: true

class StoredData
  @data = {}

  def self.set_data(key, value)
    @data[key] = value
  end

  def self.get_data(key)
    @data[key]
  end


end
