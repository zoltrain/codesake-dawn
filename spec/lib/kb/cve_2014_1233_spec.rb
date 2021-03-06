require 'spec_helper'
describe "The CVE-2014-1233 vulnerability" do
	before(:all) do
		@check = Codesake::Dawn::Kb::CVE_2014_1233.new
		# @check.debug = true
	end
  it "is reported when a paratrooper-pingdom gem version 1.0.0 is detected" do
    @check.dependencies = [{:name=>"paratrooper-pingdom", :version=>"1.0.0"}]
    @check.vuln?.should   be_true
  end
  it "is not reported when a paratrooper-pingdom gem version 1.0.1 is detected" do
    @check.dependencies = [{:name=>"paratrooper-pingdom", :version=>"1.0.1"}]
    @check.vuln?.should   be_false
  end
end
