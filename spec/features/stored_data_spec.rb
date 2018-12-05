require 'spec_helper'
require './stored_data'

describe StoredData do
  it 'initializes with an empty hash' do
    expect(stored_data.data).to eq({})
  end
end
