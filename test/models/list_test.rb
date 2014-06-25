require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "lists can't contain themselves" do
    badlist = List.new
    badlist.save
    badlist.listable_id = badlist.id
    refute badlist.valid?
  end
end
