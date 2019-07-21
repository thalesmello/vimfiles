let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_powerline_separators = 0
let window_icon = "#{?window_zoomed_flag,,}"
let window_icon = window_icon . "#{?window_activity_flag,,}"
let window_icon = window_icon . "#{?window_bell_flag,,}"
let empty_icon = "#{==:" . window_icon . ",}"
let window_icon = "#{?" . empty_icon . ",," . window_icon . " }"
let tab_name_generator = window_icon . "#{?#{==:#W,fish},#{b:pane_current_path}/,#W}"

let g:tmuxline_preset = {
      \ 'a'   : [' #(whoami)', '#S'],
      \ 'win'     : ['#I', tab_name_generator],
      \ 'cwin'    : ['#I', tab_name_generator],
      \ 'x'   : ['#{prefix_highlight}'],
      \ 'z'   : ['#{cpu_icon}#{cpu_percentage}', '#{online_status}', '#{battery_icon} #{battery_percentage}', '%R'],
      \ 'options' : {'status-justify' : 'left'}}

command! TmuxlineLoadConfig call tmuxline_config#load_theme()
