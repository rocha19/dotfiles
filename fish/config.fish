if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g -x fish_greeting ''
    set -g -x fish_greeting 'Welcome to my server!'

    set -gx VIRTUAL_ENV_DISABLE_PROMPT 1

    # Python venv
    # set -x VIRTUAL_ENV /media/yaogun/Containers/Projects/Precision_data/tab4u/pd_tab4u_api_prompt_layer_search

    # NVM_DIR and nvm.fish initialization
    set -gx NVM_DIR ~/.nvm
    # source (nvm path --sh-source)

    # LUA
    # set -gx LUA_PATH /usr/share/lua/5.4/?.lua

    # JAVA
    set -gx JAVA_HOME /usr/lib/jvm/java-17-openjdk-amd64

    # ANDROID_HOME
    set -gx ANDROID_HOME ~/Android/Sdk
    set -gx EXPO_TV 1

    # OPENSSL_DIR
    set -gx OPENSSL_DIR /usr/
    set -gx OPENSSL_LIB_DIR /usr/lib/x86_64-linux-gnu/
    # set -gx OPENSSL_DIR /usr/bin/openssl
    # set -gx OPENSSL_LIB_DIR /usr/lib/openssh
    # set -gx OPENSSL_INCLUDE_DIR /usr/include/openssl

    # set -gx OPENSSL_DIR /usr/lib/x86_64-linux-gnu/openssl
    # set -gx OPENSSL_LIB_DIR /usr/lib/x86_64-linux-gnu/openssl
    # set -gx OPENSSL_INCLUDE_DIR /usr/include/openssl

    # PODMAN_DIR
    set -x CONTAINER_STORAGE_DRIVER overlay
    set -x CONTAINER_STORAGE_PATH /media/yaogun/Containers/lib/podman
    # set -gx XDG_RUNTIME_DIR /dev/sdb2
    # set -gx XDG_RUNTIME_DIR /media/yaogun/podman


    # Adicionar o usuário ao grupo docker
    # if not groups | grep -q docker
    #     sudo usermod -aG docker $USER
    # end

    # Definir a variável de ambiente DOCKER_HOST
    set -gx DOCKER_HOST unix:///var/run/docker.sock

    # spicetify
    set -gx PATH /home/yaogun/.spicetify:$PATH

    # RUST
    set -gx PKG_CONFIG_PATH /usr/lib/x86_64-linux-gnu/pkgconfig/
    # set -gx RUST_BACKTRACE 1

    # THEME
    # TokyoNight Color Palette
    # set -l foreground c8d3f5
    # set -l selection 2d3f76
    # set -l comment 636da6
    # set -l red ff757f
    # set -l orange ff966c
    # set -l yellow ffc777
    # set -l green c3e88d
    # set -l purple fca7ea
    # set -l cyan 86e1fc
    # set -l pink c099ff

    # Syntax Highlighting Colors
    # set -g fish_color_normal $foreground
    # set -g fish_color_command $cyan
    # set -g fish_color_keyword $pink
    # set -g fish_color_quote $yellow
    # set -g fish_color_redirection $foreground
    # set -g fish_color_end $orange
    # set -g fish_color_error $red
    # set -g fish_color_param $purple
    # set -g fish_color_comment $comment
    # set -g fish_color_selection --background=$selection
    # set -g fish_color_search_match --background=$selection
    # set -g fish_color_operator $green
    # set -g fish_color_escape $pink
    # set -g fish_color_autosuggestion $comment

    # Completion Pager Colors
    # set -g fish_pager_color_progress $comment
    # set -g fish_pager_color_prefix $cyan
    # set -g fish_pager_color_completion $foreground
    # set -g fish_pager_color_description $comment
    # set -g fish_pager_color_selected_background --background=$selection

end

fish_add_path /home/yaogun/.spicetify
