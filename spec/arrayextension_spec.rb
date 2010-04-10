require File.dirname(__FILE__) + '/spec_helper'

describe Array do

  describe ".join_cr" do
    
    it "should be an empty string when array is empty" do
      [].join_cr.should == ''
    end
    
    it "should return a string with no \\n at the end, when there's only one element in the array" do
      %w(element).join_cr.should == 'element'
    end

    it "should join elements of an array so that each element appears in one line, in the resulting string" do
      %w(each word in one line please).join_cr.should == "each\nword\nin\none\nline\nplease"
    end

  end
  
  describe ".draw" do

    it "should be empty when array is empty" do
      [].draw.should == []
    end
    
    it "should be empty when array is empty it's asked to return more than one element" do
      [].draw(2).should == []
    end
    
    it "should return the only element of an one element array" do
      %w(element).draw.should == %w(element)
    end
    
    it "should return the same element more than once when it's asked to return more than one element" do
      %w(element).draw(2).should == %w(element element)
    end
    
    it "should return element at random when array has several elements" do
      Kernel.should_receive(:rand).and_return(3)
      %w(this is an array full of elements).draw.should == %w(array)
    end
    
    it "should return more than one element at random when array has several elements and it's asked to return more than one element" do
      Kernel.should_receive(:rand).and_return(0)
      Kernel.should_receive(:rand).and_return(3)
      %w(this is an array full of elements).draw(2).should == %w(this array)
    end
    
  end

  describe ".to_symbols" do
    
    it "should be a empty array when a empty string" do
      [].to_symbols.should == []
    end
    
    it "should ignore nil items" do
      [nil].to_symbols.should == []
    end
    
    it "should return all elements in symbol for string elements" do
      %w(collect map sort reverse).to_symbols.should == [:collect, :map, :sort, :reverse]
    end
    
    it "should return all elements in symbol for Fixnum elements" do
      [1,2,3,4,5].to_symbols.should == [:"1", :"2", :"3", :"4", :"5"]
    end
    
    it "should return all elements in symbol for Range elements" do
      [(1..5), (6..10)].to_symbols.should == [:"1..5", :"6..10"]
    end
    
  end

end
