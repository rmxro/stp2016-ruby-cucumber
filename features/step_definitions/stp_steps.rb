Given(/^I have entered a valid address$/) do
  visit 'http://www.dominos.com'
  find('.qa-Cl_order').click
  find('.js-delivery').click
  find('#Address_Type_Select').send_keys 'House'
  find('#Street').send_keys '1 Old Bayshore Hwy'
  find('#City').send_keys 'Millbrae'
  find('#Region').send_keys 'CA'
  find('#Postal_Code').send_keys '94030'

end

When(/^I continue to delivery$/) do
  find('.js-search-cta').click
end

Then(/^all entrees are avialable for order$/) do
  expect(page).to have_css('#entreesPage')
  page.save_screenshot 'entreesPage.png'
end
