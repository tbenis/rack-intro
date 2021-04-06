require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.

my_server = Proc.new do
    [200, {'Content_type' => 'text/html'}, ['<h1>Hello</h1>']]
end
run my_server