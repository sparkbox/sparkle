# The name of your prodution branch. This script will not allow users to release a new version
# if they're not on the correct branch
PRODUCTION_BRANCH="main"

CURRENT_BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
if [[ $CURRENT_BRANCH != $PRODUCTION_BRANCH ]]
  then
  echo "\033[1;31mCannot release while on branch '$CURRENT_BRANCH' - please switch to '$PRODUCTION_BRANCH'.\033\n[0m"
  exit 1
fi

RELEASE_OPTION=$1
case $RELEASE_OPTION in
  --major)
    RELEASE_TYPE='major'
    ;;
  --minor)
    RELEASE_TYPE='minor'
    ;;
  --patch)
    RELEASE_TYPE='patch'
    ;;
esac

# If we've specified a type of release, we need to include the `releaseAs` argument
SPECIFIED_RELEASE_TYPE_ARG=$([ $RELEASE_TYPE ] && echo "--releaseAs $RELEASE_TYPE");
CURRENT_PACKAGE_VERSION=$(node -e "process.stdout.write(require('./package.json').version)")
NEXT_VERSION=$(npx next-standard-version ${SPECIFIED_RELEASE_TYPE_ARG})
echo "\033[33mBump plugin from ${CURRENT_PACKAGE_VERSION} to ${NEXT_VERSION}?\033[0m\n"
echo "\033[33mPress \"y\" to proceed with this release or press any other key to abort.\033[0m\n"

read -p "" -n 1 -s
if [[ $REPLY =~ ^[Yy]$ ]]
then
  npx standard-version -a $([ $RELEASE_TYPE ] && echo "--release-as $RELEASE_TYPE")
  git push --follow-tags
  echo "\033[1;32mPackage succesfully updated to ${NEXT_VERSION} and pushed to the remote.\033[0m\n"
else
  echo "\033[1;31mRelease was aborted.\033[0m\n"
fi
