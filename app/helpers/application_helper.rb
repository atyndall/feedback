module ApplicationHelper

  def old_browser? (request)
    ua = UserAgent.parse(request.user_agent)

    browser = Struct.new(:browser, :version)
    supported= [
        browser.new('Safari', '4.0'),
        browser.new('Android', '4.0'),
        browser.new('Blackberry', '7.0'),
        browser.new('Chrome', '999'),
        browser.new('Firefox', '16.0'),
        browser.new('Opera', '15.0'),
        browser.new('Internet Explorer', '9.0')
    ]

    supported.none? { |browser| ua >= browser }
  end

end
