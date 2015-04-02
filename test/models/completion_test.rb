
require 'test_helper'

class CompletionTest < ActiveSupport::TestCase

  test "completion with completion datetime should be complete" do
    completion = completions(:wake_up_complete)
    assert(completion.complete?)
  end

  test "completion without completion datetime should be incomplete" do
    completion = completions(:wake_up_incomplete)
    assert_not(completion.complete?)
  end

  test "completion completed on wrong day should be incomplete" do
    completion = completions(:wake_up_invalid)
    assert_not(completion.complete?)
  end
end
