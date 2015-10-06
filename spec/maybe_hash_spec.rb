require 'spec_helper'

RSpec.describe MaybeHash do
  it 'has a version number' do
    expect(MaybeHash::VERSION).not_to be nil
  end

  let(:data) do
    {
      foo: {
        bar: 42
      }
    }
  end

  context "given a simple hash" do
    it_behaves_like "a chain traverser" do
      let(:params) { data }
    end
  end

  context "given a Rails-style parameter hash" do
    it_behaves_like "a chain traverser" do
      let(:params) { ActionController::Parameters.new(data) }
    end
  end

  context "given an OpenStruct hash" do
    it_behaves_like "a chain traverser" do
      let(:params) { OpenStruct.new(data) }
    end
  end

end
