require "./spec_helper"
require "../src/p_inspect"

class FakeObject
  def can_be_called_after_p_inspect
    true
  end

  def self.can_be_called_after_p_inspect
    true
  end
end

describe "p_inspect" do
  it "works with instance methods" do
    FakeObject.new.p_inspect.can_be_called_after_p_inspect.should be_true
  end

  it "works with class methods" do
    FakeObject.p_inspect.can_be_called_after_p_inspect.should be_true
  end
end
