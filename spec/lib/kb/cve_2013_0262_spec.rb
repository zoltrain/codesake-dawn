require 'spec_helper'
describe "The CVE-2013-0262 vulnerability" do
	before(:all) do
		@check = Codesake::Dawn::Kb::CVE_2013_0262.new
		# @check.debug = true
	end

  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.5.0"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.5.1"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.0"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.1"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.2"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.3"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.4"}]
    @check.vuln?.should   be_true
  end
  it "is not reported when a fixed release is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.5"}]
    @check.vuln?.should   be_false
  end
  it "is not reported when a fixed release is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.5.2"}]
    @check.vuln?.should   be_false
  end
end
