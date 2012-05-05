require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Madad do
  describe "#latest_value" do
    it "returns the latest value" do
      VCR.use_cassette('madad') do
        Madad.latest_value.should == 104.4
      end
    end
  end
end
