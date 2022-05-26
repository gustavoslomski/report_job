# frozen_string_literal: true

require 'test_helper'

class ReportMailerTest < ActionMailer::TestCase
  test 'send_created' do
    mail = ReportMailer.send_created
    assert_equal 'Send created', mail.subject
    assert_equal ['to@example.org'], mail.to
    assert_equal ['from@example.com'], mail.from
    assert_match 'Hi', mail.body.encoded
  end
end
