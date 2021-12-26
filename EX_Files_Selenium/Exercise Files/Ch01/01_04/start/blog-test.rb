require "selenium-webdriver"
require "rspec"

# TEST: Sign up for blog
describe "Blog application" do

	describe "signup to the blog application" do
		it "confirm that user7689 can successfully signup" do
			driver = Selenium::WebDriver.for :firefox
			# Go to signup form
			driver.navigate.to "https://selenium-blog.herokuapp.com/signup"
			# Fill out and submit the form
			username_field = driver.find_element(id: 'user_username')
			username_field.send_keys ("user7689")

			email_field = driver.find_element(id: 'user_email')
			email_field.send_keys ("email7689@test.com")

			password_field = driver.find_element(id: 'user_password')
			password_field.send_keys ("password7689")

			submit_button = driver.find_element(id: 'submit')
			submit_button.click

			banner = driver.find_element(id: 'flash_success')
			banner_text = banner.text
			expect(banner_text).to eq("Welcome to the alpha blog user7689")
			driver.quit
		end
	end

end