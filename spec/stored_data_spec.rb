# frozen_string_literal: true

require 'spec_helper'
require './stored_data'

describe StoredData do
  subject(:data) { described_class.new }
  let(:mykey) { double :key }
  let(:myvalue) { double :value }

  it 'initializes with an empty hash' do
    expect(described_class.get_data(mykey)).to be_nil
  end

  it 'stores data in key value pairs' do
    expect(described_class.set_data(mykey, myvalue)).to equal myvalue
  end

  it 'can return the stored data' do
    described_class.set_data(mykey, myvalue)
    expect(described_class.get_data(mykey)).to equal myvalue
  end
end
