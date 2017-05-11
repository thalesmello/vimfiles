let g:airline#extensions#tmuxline#enabled = 0
let s:computer_emoji = '💻'
let g:tmuxline_preset = {
      \ 'a'	  : [s:computer_emoji . '  #(whoami)', '#S'],
      \ 'win'	  : ['#I', "#(if echo #W | grep -q reattach-to-user-namespace; then echo '#{pane_current_path}' | rev | cut -d'/' -f1 | rev | xargs -I {} echo {}/; else echo #W; fi)"],
      \ 'cwin'	  : ['#I', "#(if echo #W | grep -q reattach-to-user-namespace; then echo '#{pane_current_path}' | rev | cut -d'/' -f1 | rev | xargs -I {} echo {}/; else echo #W; fi)"],
      \ 'x'	  : ['#{prefix_highlight}'],
      \ 'z'	  : ['#{cpu_icon}#{cpu_percentage}', '#{online_status}', '#{battery_icon} #{battery_percentage}', '%R'],
      \ 'options' : {'status-justify' : 'left'}}

