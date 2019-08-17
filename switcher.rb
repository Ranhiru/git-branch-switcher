require "tty-prompt"

choices = %w(vodka beer wine whisky bourbon)

list_of_branches = `git branch --sort=-committerdate`
puts list_of_branches

# prompt = TTY::Prompt.new
# prompt.multi_select("Select drinks?", choices, filter: true)
