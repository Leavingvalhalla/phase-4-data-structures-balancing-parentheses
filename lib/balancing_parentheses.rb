require_relative './stack'

def balancing_parentheses(string)
    stack = Stack.new
    string.split('').each do |char|
       if char == '('
        stack.push(char)
       else
        stack.peek == '(' ? stack.pop : stack.push(char)
       end
    end
    stack.size
end