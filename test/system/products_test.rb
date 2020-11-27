require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the home" do
    visit '/'
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test 'adding a new product' do
    # 1. Sign in the user (george)
    login_as users(:george)

    # 2. visit the right page ("/products/new")
    visit "/products/new"


    # 3. fill the form with title & description
    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"

    # 4. press submit button
    click_on 'Create Product'

    save_and_open_screenshot
    # test -> check which page you are on
    assert_equal root_path, page.current_path
    # test -> test that the product is there
    assert_text "Change your life: Learn to code"
  end
end
