work() {
  projects_path="/Users/strajk/Work"

  project_name="$1"
  project_path="$projects_path/$1/"

  if [[ -d $project_path ]]; then
    echo "Entering: $project_name ($project_path)"

    # Change directory
    cd $project_path

    # Hide all other windows
    osascript -e 'tell application "System Events" to set visible of (every process whose visible is true) to false'

    # Open Default Browser
    open -a '/Applications/Safari.app'

    # Open Dev Browser
    open -a '/Applications/Google Chrome Canary.app'

    # Open IDE
    wstorm .

    # Open finder
    open -a Finder .

    # Open SourceTree
    open -a '/opt/homebrew-cask/Caskroom/sourcetree/1.8.1/SourceTree.app' .

    # Open Dash for assistance
    open -a '/Applications/Dash.app'

    # Open Spotify for some Music
    open -a '/Applications/Spotify.app'

    # Arrange workspace
    osascript -e 'tell application "Moom" to arrange windows according to snapshot named "Work"'
  else
    echo "$project_path is not a directory"
  fi
}
_work() { _files -W /Users/strajk/Work -/; }
compdef _work work