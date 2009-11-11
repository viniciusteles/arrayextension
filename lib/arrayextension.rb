# The Ruby class Array is extended with a few useful methods. 
#
class Array
  
  # Returns a string created by converting each element of the array to a string, separated by \n
  #
  #   [].join_cr                  #=> ""
  #   ["a"].join_cr               #=> "a"
  #   ["a", "b", "c"].join_cr     #=> "a\nb\nc\n"
  #
  def join_cr
    self.compact.reject { |element| element.to_s.empty? || element.to_s.strip == "\n" }.join("\n")
  end
  
  # Returns an array containing elements choosen at random
  #
  #   [].draw                     #=> []
  #   [].draw(2)                  #=> []
  #   ["a"].draw(2)               #=> ["a", "a"]
  #   ["a", "b", "c"].draw        #=> ["b"] assuming "b" was choosen randomly
  #   ["a", "b", "c"].draw(2)     #=> ["b", "c"] assuming "b" and "c" were choosen randomly
  #
  def draw(number_of_elements = 1)
    return [] if empty?
    (1..number_of_elements).to_a.map { random_element }
  end  
  
  private
  
    def random_element
      self[Kernel.rand(self.length)]
    end
  
end