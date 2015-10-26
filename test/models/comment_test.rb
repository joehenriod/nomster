require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	test "comment humanized" do
	    comment_rating = Comment.new(:rating => '1_star').humanized_rating 
	    assert_equal "one star", comment_rating
	end

    
end
