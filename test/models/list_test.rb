require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test "lists can't contain themselves" do
    badlist = List.create
    badlist.listable_id = badlist.id
    refute badlist.valid?
  end

  test "list can't contain a list that contains it" do
    badlist = List.create
    badlist.listable_id = 1
    parent = List.first
    parent.listable_id = badlist.id
    refute badlist.valid?
  end

  # test "lists can't contain any of their own ancestors" do
  #
  # end
end
