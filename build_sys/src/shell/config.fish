function reseat
  builtin cd /build_env/
end

set PATH /build_sys_internal/custom_commands $PATH

function fish_prompt --description 'Write out the prompt'
  echo -n -s (set_color cyan) "build_sys" ' ' (set_color $fish_color_cwd) (prompt_pwd) \
                (set_color normal) '> '
end

reseat

