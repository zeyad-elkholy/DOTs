#  Show a list of available aliases and functions
alias a='_listcommands | \less -n -S'
function _listcommands() {
	local COLOR="\033[1;31m" # Light Red
	local NOCOLOR="\033[0m"
	echo -e "${COLOR}Aliases:${NOCOLOR}"
	# compgen -A alias
	alias | awk -F'[ =]' '{print "\033[33m"$2"\033[0m\t\033[34m"$0"\033[0m";}'
	echo
	echo -e "${COLOR}Functions:${NOCOLOR}"
	compgen -A function | grep -v '^_.*'
}

# Change the Git branch
	function gitbranch() {
		if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
			if [[ -z "${@}" ]]; then
				local _FOUND_PICKER=false
				for _PICKER in fzy fzf peco percol pick icepick selecta sentaku; do
					if [[ -x "$(command -v $_PICKER)" ]]; then
						_FOUND_PICKER=true
						git checkout $(git branch --sort=-committerdate | cut -c 3- | $_PICKER)
						break;
					fi
				done
				if [[ $_FOUND_PICKER == false ]]; then
					echo -e "\033[1;34mMost Recent Branches By Commit Date:\033[0m"
					echo "$(git branch --sort=-committerdate | head -n 20)"
					git checkout
				fi
			else
				git checkout ${@}
			fi
		else
			echo -e '\033[1;31mERROR:\033[1;37m Current directory is not a Git repository\033[0m'
		fi
	}

	# Shorthand for find
function f() {
	find . -name "$1" 2>&1 | grep -v 'Permission denied'
}

# use curl and bsdtar to download and extract a compressed archive
curltar() {
    if [[ $# == 0 ]]; then
        echo "Alias to use curl and bsdtar to download and extract a compressed archive"
        echo "Example: curltar (url) (output-directory)"
        return 0
    elif [[ $# < 2 ]]; then
        DIR=$PWD
    else
        DIR=$2
    fi

    curl -Lo /dev/stdout $1 | bsdtar -xf /dev/stdin --directory $DIR
}

# Create a new directory and enter it
mc () {
  mkdir -p "$@" && cd "$@"
}

function mkbak() {
  for file in "$@"
  do
    cp "$file" "$file.bak"
  done
}
