# this file generated by script/generate pickle

Given(/^#{CaptureModel} exists$/) do |name|
  create_model(name)
end

Given(/^#{CaptureModel} exists with #{CaptureFields}$/) do |name, fields|
  create_model(name, fields)
end

Given(/^(\d+) #{CaptureFactories} exist$/) do |amount, factory|
  amount.times { create_model(factory) }
end

Given(/^(\d+) #{CaptureFactories} exist with #{CaptureFields}$/) do |amount, factory, fields|
  amount.times { create_model(factory, fields) }
end

Then(/^#{CaptureModel} should exist with #{CaptureFields}$/) do |name, fields|
  find_model(name, fields).should_not be_nil
end

Then(/^#{CaptureModel} should (?:be|have) (?:an? )?([\w ]+)$/) do |name, predicate|
  predicate_method = predicate.gsub(' ', '_')
  model(name).should send("be_#{predicate_method}")
end

Then(/^#{CaptureModel} should not (?:be|have) (?:an? )?([\w ]+)$/) do |name, predicate|
  predicate_method = predicate.gsub(' ', '_')
  model(name).should_not send("be_#{predicate_method}")
end
