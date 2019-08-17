#!/usr/bin/env ruby

require "tty-prompt"

list_of_branches = `git branch --sort=-committerdate`.split("\n")
                                                     .map { |branch| branch[2..branch.length] }

prompt = TTY::Prompt.new
selected_branch = prompt.select("Select branch", list_of_branches, filter: true)

checkout_command = "git checkout #{selected_branch}"
`#{checkout_command}`
