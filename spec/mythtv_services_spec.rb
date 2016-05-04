require 'spec_helper'

describe MythtvServices do

  describe "#service_names" do
    let(:output) { MythtvServices.service_names }
    
    it 'has 8 service names' do
      expect(output.size).to eq(8)
    end
  end

  describe "#client" do
    let(:host) { '10.37.0.5' }
    let(:port) { 6544 }
    let(:service_name) { 'Myth' }
    let(:output) { MythtvServices.client(host, port, service_name) }

    it 'is not nil' do
      expect(output).to_not eq nil
    end
  end

end
