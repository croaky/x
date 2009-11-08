X
=

Ruby utilities.

    sudo gem install x -s http://gemcutter.org

Converting
----------

    'coca cola'.camel_case             # 'CocaCola'
    'http://snake-case.com'.snake_case # 'http_snake_case_com'

Filing
------

    File.here                   # 'test'
    File.up / 'lib' / 'x'       # 'test/../lib/x'
    File.up(2) / 'x' / 'README' # 'test/../../x/README'

Testing
-------

    should "name" do
      assert true
    end

