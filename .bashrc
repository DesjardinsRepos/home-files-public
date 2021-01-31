###
# ~/.bashrc
#

[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# OS - stuff

    alias generatePackageList='pacman -Qe | awk "{print $1}" > package_list.txt'
    alias installFromList='yay --sudoloop -S - < package_list.txt'
    alias importkey='gpg --keyserver pool.sks-keyservers.net --recv-keys'
    alias yay='yay --sudoloop'
    alias scan='scanimage --format=png --output-file scanout.png --progress'
    alias sync='sync & watch -n 1 grep -e Dirty: /proc/meminfo'
    alias syncstate='watch -d grep -e Dirty: -e Writeback: /proc/meminfo'
    alias trash='trash-put'
    alias gofind='sudo find / -name'
    alias ls='ls --color=auto'
    alias logout='qdbus org.kde.ksmserver /KSMServer logout 0 0 0'
    alias pacman-log='grep -i installed /var/log/pacman.log'
    #alias burn='~/permanent/public/bash/burn'

# exported scripts

    alias lsec='sudo ~/permanent/private/bash/.lsec'
    #alias fixdiscord='~/permanent/public/bash/Mon2Cam'

# personal

    alias ytdl='youtube-dl'
    #alias ytdl-use-name='~/permanent/public/bash/ytdl-use-name'
    #alias ytdl-play='~/permanent/public/bash/ytdl-play'
    #alias ytdl-list='~/permanent/public/bash/ytdl-list'
    #alias ytdl-get-url-from-file='~/permanent/public/bash/getUrl "$@"'
    alias chill='mpa https://www.youtube.com/watch?v=5qap5aO4i9A'
    alias mpa='mpv --volume=50 --no-video --force-seekable=yes'
    alias mpv='mpv --no-osc'
    alias notes='nano ~/permanent/private/data/notes-beta'
    alias aquarium='mpv --volume=0 --no-osc --fs --video-zoom=0.115 https://www.youtube.com/watch?v=9Ej-0VRWmI8&t=212s'
    alias mpv-zoom='mpv --no-osc --video-zoom=0.115'
    alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
    alias last-journal='sudo journalctl -b-1'
    #alias getSurvey='~/permanent/public/bash/getSurvey'
    #alias get='~/permanent/public/bash/get'
    #alias twitch='~/permanent/public/twitch'
    #alias execnode='~/permanent/public/bash/execnode'
    #alias combine-text-in-folder='~/permanent/public/bash/combine-text-in-folder'
    #alias cl='~/permanent/public/bash/cl'	

    convertpdf() { 
        for file in "$@"; do $(convert "$file" "${file:0:${#file}-4}.pdf"); done; 
    }

    convertmp3() { 
        for file in "$@"; do $(ffmpeg -i "$file" "${file:0:${#file}-4}.mp3"); done; 
    }

# IOS

    alias ios-pair='idevicepair pair'
    alias ios-mount='ifuse -o allow_other -o nonempty ~/IphoneMount'
    alias ios-umount='sudo umount ~/IphoneMount'
    alias ios-umount-force='sudo umount -l ~/IphoneMount'
    alias ios-status='ls -a ~/IphoneMount'

# Windscribe

    alias w='windscribe'
    alias wstart='sudo systemctl start windscribe'
    alias startw='sudo systemctl start windscribe && windscribe connect best'
    alias stopw='windscribe disconnect && sudo systemctl stop windscribe'


neofetch --colors 3 7 7 3 7 7 --ascii_colors 15 7 --w3m permanent/public/media/dio.jpg --size 340 --xoffset 25

export PATH="~/permanent/public/path-scripts/:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
