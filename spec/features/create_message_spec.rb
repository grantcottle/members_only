require 'rails_helper'
RSpec.feature "CreateMessages", type: :feature do
  let(:new_post_form) { NewPostForm.new  }  
  let(:login_form) {LoginForm.new  }
  let(:user) { FactoryBot.create(:user) }

  background do
    login_form.visit_page.login_as(user)
  end

  scenario 'create a new message with valid data' do
    new_post_form.visit_page.fill_in_with(
      body: 'Secret message', 
      privacy: 1
    ).submit
    expect(page).to have_content('Post was successfully created.')
    expect(page).to have_content('Secret message')
  end

  scenario 'cannot create message with invalid data' do
    new_post_form.visit_page.submit
    expect(page).to have_content("Body can't be blank")
  end
end
