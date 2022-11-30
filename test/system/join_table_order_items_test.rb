require "application_system_test_case"

class JoinTableOrderItemsTest < ApplicationSystemTestCase
  setup do
    @join_table_order_item = join_table_order_items(:one)
  end

  test "visiting the index" do
    visit join_table_order_items_url
    assert_selector "h1", text: "Join table order items"
  end

  test "should create join table order item" do
    visit join_table_order_items_url
    click_on "New join table order item"

    click_on "Create Join table order item"

    assert_text "Join table order item was successfully created"
    click_on "Back"
  end

  test "should update Join table order item" do
    visit join_table_order_item_url(@join_table_order_item)
    click_on "Edit this join table order item", match: :first

    click_on "Update Join table order item"

    assert_text "Join table order item was successfully updated"
    click_on "Back"
  end

  test "should destroy Join table order item" do
    visit join_table_order_item_url(@join_table_order_item)
    click_on "Destroy this join table order item", match: :first

    assert_text "Join table order item was successfully destroyed"
  end
end
