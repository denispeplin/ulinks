#!/usr/local/bin/ruby
# encoding: koi8-r

require 'rubygems'
require 'mechanize'
require 'pp'

require "./config/environment.rb"
Rails.application.require_environment!
config = Rails.application.config

ec = Encoding::Converter.new("koi8-r", "utf-8")

agent = Mechanize.new

page = agent.get(config.forum_url)

forum_form  = page.form('login')

forum_form.user = config.forum_user

forum_form.pass = config.forum_password

page = agent.submit(forum_form, forum_form.buttons.first)

new_ticket_page = page.uri.to_s.gsub(/type=list/, 'type=add')

page = agent.get(new_ticket_page)

forum_form  = page.form_with

forum_form.title = Date.today.to_s + ec.convert(' тестовая задача')
forum_form.text = ec.convert("Содержимое задачи\n во много строк")

pp page

#page.links.each do |link|
#  puts ec.convert(link.text)
#  puts link.text
#end
