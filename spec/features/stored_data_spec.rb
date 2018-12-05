# frozen_string_literal: true

require 'spec_helper'
require './stored_data'

describe StoredData do
  subject(:stored_data) { described_class.new }
  it 'initializes with an empty hash' do
    expect(stored_data.data).to eq({})
  end
end
