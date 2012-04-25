#!/usr/local/bin/ruby
# encoding: koi8-r

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

page = agent.get(config.forum_url)

forum_form  = page.form('login')

forum_form.user = config.forum_user

forum_form.pass = config.forum_password

page = agent.submit(forum_form, forum_form.buttons.first)

#pp page

page.links.each do |link|
  #puts ec.convert(link.text)
  if link.href =~ /type=view/
    puts link.href + ': ' + link.text
    forumticket = ForumLink.forumticket_extract(link.href)
    ForumLink.create(path: link.href, text: link.text, forumticket: forumticket)
  end
end

#examples:
puts white.similarity('Rakovka', 'Rakovka*')

puts Translit.convert('Mikhailovka')
