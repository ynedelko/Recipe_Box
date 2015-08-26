require('spec_helper')

describe('path of recipe box', {:type => :feature}) do
  it('allows a user to click a category tag') do
    visit('/')
    fill_in('name', :with => 'super breakfast')
    click_button('add it')
    expect(page).to have_content("SUPER BREAKFAST")
  end
end
