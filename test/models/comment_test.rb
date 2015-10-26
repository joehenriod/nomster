require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "comment humanized" do
    quote = Comment.new(:rating => '1_star').humanized_rating 
    get :show, :id => quote.id
    assert_response :success

    
end
