require 'spec_helper'
describe "The CVE-2013-0184 vulnerability" do
	before(:all) do
		@check = Codesake::Dawn::Kb::CVE_2013_0184.new
		# @check.debug = true
	end

  it "is reported when the vulnerable gem is detected - 1.1.0" do
    @check.dependencies = [{:name=>"rack", :version=>"1.1.0"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.1.3" do
    @check.dependencies = [{:name=>"rack", :version=>"1.1.3"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.1.2" do
    @check.dependencies = [{:name=>"rack", :version=>"1.1.2"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.1.4" do
    @check.dependencies = [{:name=>"rack", :version=>"1.1.4"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.2.0" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.0"}]
    @check.vuln?.should   be_true
  end

  it "is reported when the vulnerable gem is detected - 1.2.1" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.1"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.2.2" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.2"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.2.3" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.3"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.2.4" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.4"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.2.5" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.5"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.2.6" do
    @check.dependencies = [{:name=>"rack", :version=>"1.2.6"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.0" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.0"}]
    @check.vuln?.should   be_true
  end

  it "is reported when the vulnerable gem is detected - 1.3.1" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.1"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.2" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.2"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.3" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.3"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.4" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.4"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.5" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.5"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.6" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.6"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.7" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.7"}]
    @check.vuln?.should   be_true
  end
  it "is reported when the vulnerable gem is detected - 1.3.8" do
    @check.dependencies = [{:name=>"rack", :version=>"1.3.8"}]
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

  it "is not reported when a fixed release is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.4.5"}]
    @check.vuln?.should   be_false
  end
  it "is not reported when a fixed release is detected" do
    @check.dependencies = [{:name=>"rack", :version=>"1.5.2"}]
    @check.vuln?.should   be_false
  end
end
