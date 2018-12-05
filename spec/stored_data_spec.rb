# frozen_string_literal: true

require 'spec_helper'
require './stored_data'

describe StoredData do
  subject(:data) { described_class.new }
  let(:mykey) { double :key }
  let(:myvalue) { double :value }

  it 'initializes with an empty hash' do
    expect(data.get_data(mykey)).to be_nil
  end

  it 'stores data in key value pairs' do
    expect(data.set_data(mykey, myvalue)).to equal myvalue
  end

  it 'can return the stored data' do
    data.set_data(mykey, myvalue)
    expect(data.get_data(mykey)).to equal myvalue
  end

  it 'can return a hash of all the data' do
    data.set_data(mykey, myvalue)
    expect(data.data.keys.first).to equal mykey
    expect(data.data.values.first).to equal myvalue
  end
end
