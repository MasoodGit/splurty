require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do
    #quote = Quote.create(:author => 'Masood Alam', :saying => 'You only yolo once.')
    quote = FactoryGirl.create(:quote, :author => 'Masood Alam')
    expected = "MA#" + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
