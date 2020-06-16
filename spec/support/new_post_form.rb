class NewPostForm
  include Capybara::DSL

  def visit_page  
    visit('/posts')
    click_on('New Post')
    self
  end

  def fill_in_with(params={})
    fill_in('Body', with: params.fetch(:body, "Secret message")) 
    self
  end

  def submit
   click_on('Create Message') 
   self
  end
end
