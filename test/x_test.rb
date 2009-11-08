require 'test/unit'
require File.join(File.dirname(__FILE__), '..', 'lib', 'x')

class XTest < Test::Unit::TestCase
  should "convert to camel case" do
    assert_equal 'CocaCola', 'coca cola'.camel_case
  end

  should "convert to snake case" do
    assert_equal 'http_snake_case_com', 'http://snake-case.com'.snake_case
  end

  should "join file paths" do
    assert_equal 'test',                File.here
    assert_equal 'test/../lib/x',       File.up / 'lib' / 'x'
    assert_equal 'test/../../x/README', File.up(2) / 'x' / 'README'
  end
end
