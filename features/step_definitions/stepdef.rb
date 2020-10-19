module FridayStepHelper
  def is_it_friday(day)
    if day=='Friday'
        'TGIF'
    else
        "Nope"
    end
  end
end
World(FridayStepHelper)

# Given('today is a sunday') do
#   @today='Sunday'
# end

# When('I ask whether it is Friday yet') do
#   @actual_day= is_it_friday(@today)
# end

# Then('I should be told {string}') do |expected_answer|
#   expect(@actual_day).to eq(expected_answer)
# end

# Given('today is Friday') do
#   @today= 'Friday'
# end

# When('I ask whether it is friday yet') do
#   @current_answer= is_it_friday(@today)
# end

# Then('I should tell {string}') do |string|
#   expect(@current_answer).to eq(string)  
# end

Given("today is {string}") do |given_day|
  @today = given_day
end

When("I ask whether it's Friday yet") do
  @actual_answer = is_it_friday(@today)
end

Then("I should be told {string}") do |expected_answer|
  expect(@actual_answer).to eq(expected_answer)
end