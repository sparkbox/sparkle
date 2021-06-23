# The name of your prodution branch. This script will not allow users to release a new version
# if they're not on the correct branch
PRODUCTION_BRANCH="main"

CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
if [[ $CURRENT_BRANCH != $PRODUCTION_BRANCH ]]
  then
  echo "\033[1;31mCannot release while on branch '$CURRENT_BRANCH' - please switch to '$PRODUCTION_BRANCH'.\033\n[0m"
  exit 1
fi

echo "\033[1;33mPending version change:\033[0m\n"

npx standard-version --dry-run --skip.changelog --skip.commit --skip.tag "$@"

echo "\n\033[33mNothing committed yet...\033[0m\n"
echo "\033[33mPress \"y\" to proceed with this release or press any other key to abort.\033[0m\n"

read -p "" -n 1 -s
if [[ $REPLY =~ ^[Yy]$ ]]
then
  npx standard-version -a "$@"
  git push --follow-tags
  echo "\033[1;32mPackage succesfully updated and pushed to the remote.\033[0m\n"
else
  echo "\033[1;31mRelease was aborted.\033[0m\n"
fi
