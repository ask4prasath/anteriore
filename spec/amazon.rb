require 'spec_helper'

describe Amazon do
  before(:all) do
    @amazon = Amazon.new
  end

  it "should create storage path" do
    @amazon.create_storage_path
    @path = ENV['HOME'] + '/' + ".anteriore"
    File.directory?(@path).should be_true
    File.exists?(@path + '/' + 'amazon.yml').should be_true
  end
end
