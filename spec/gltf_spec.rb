# frozen_string_literal: true

RSpec.describe Gltf do
  describe '.load' do
    let(:file) { 'file' }
    it do
      expect(Gltf::Binary).to receive(:read).with(file)
      Gltf.load(file)
    end
  end
end
