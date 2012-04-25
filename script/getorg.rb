#!/usr/local/bin/ruby

require 'rubygems'
require 'mechanize'
require 'pp'
require 'text'
white = Text::WhiteSimilarity.new
require 'translit'

require "./config/environment.rb"
Rails.application.require_environment!
config = Rails.application.config

ec = Encoding::Converter.new("utf-8", "koi8-r")

agent = Mechanize.new

# FORUM LINK COLLECTION
page = agent.get(config.forum_url)

forum_form  = page.form('login')

forum_form.user = config.forum_user

forum_form.pass = config.forum_password

page = agent.submit(forum_form, forum_form.buttons.first)

#pp page

page.links.each do |link|
  #puts ec.convert(link.text)
  if link.href =~ /type=view/
#    puts link.href + ': ' + link.text
    forumticket = ForumLink.forumticket_extract(link.href)
    ForumLink.create(path: link.href, text: link.text, forumticket: forumticket)
  end
end

# WATSUP LINK COLLECTION

agent.auth(config.watsup_user, config.watsup_password)

page = agent.get(config.watsup_url)
page.encoding = 'windows-1251'

page.search('td').each do |tds|
  if tds.css('a')[0]
    if (anchor = tds.css('a')[0]['href']) =~ /device\.asp/
      linkname = tds.text.split("\n")[1]
      linktext = tds.text.split("\n")[1].gsub(/\(.*\)$/, '').chop
      linkip = tds.text.split("\n")[1][/.*\(([^\)]*)\)/,1]
      puts "#{linktext} : #{linkip} : #{anchor}"
      WatsupLink.create(path: anchor, text: linktext, ip_address: linkip)
    end
  end
end
#pp page

#examples:
#puts white.similarity('Rakovka', 'Rakovka*')

#puts Translit.convert('Mikhailovka')
