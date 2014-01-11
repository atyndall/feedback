module ApplicationHelper
  def old_browser? (request)
    ua = UserAgent.parse(request.user_agent)

    browser = Struct.new(:browser, :version)
    supported= [
        browser.new('Safari', '5.1.7'),
        browser.new('Android', '534.30'),
        browser.new('Chrome', '18.0.1025.166'),
        browser.new('Firefox', '15'),
        browser.new('Opera', '15'),
        browser.new('Internet Explorer', '9'),
    ]

    supported.none? { |browser| ua >= browser }
  end

end
