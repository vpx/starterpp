#!/usr/bin/env bash
set -e

read -rp "Enter license year: " LICENSE_YEAR
read -rp "Enter license holder (name and surname): " LICENSE_HOLDER
read -rp "Enter GitHub username: " GITHUB_USERNAME
read -rp "Enter GitHub repository name: " GITHUB_REPOSITORY_NAME
read -rp "Enter project name: " PROJECT_NAME

PROJECT_NAME_LC=$(echo "$PROJECT_NAME" | tr '[:upper:]' '[:lower:]')
PROJECT_NAME_UC=$(echo "$PROJECT_NAME" | tr '[:lower:]' '[:upper:]')

case "$OSTYPE" in
  darwin*) SED_INPLACE=(-i "");;
  *)       SED_INPLACE=(-i);;
esac

sed "${SED_INPLACE[@]}" "s/{{LICENSE_YEAR}}/$LICENSE_YEAR/g" license.md
sed "${SED_INPLACE[@]}" "s/{{LICENSE_HOLDER}}/$LICENSE_HOLDER/g" license.md
sed "${SED_INPLACE[@]}" "s/vpx/$GITHUB_USERNAME/g" .github/ISSUE_TEMPLATE/config.yml
sed "${SED_INPLACE[@]}" "s/starterpp/$GITHUB_REPOSITORY_NAME/g" .github/ISSUE_TEMPLATE/config.yml

find . -type d -name ".git" -prune -o -type f -print0 | while IFS= read -r -d '' file; do
    sed "${SED_INPLACE[@]}" "s/starterpp/$PROJECT_NAME_LC/g" "$file"
    sed "${SED_INPLACE[@]}" "s/STARTERPP/$PROJECT_NAME_UC/g" "$file"
done

rm -- "$0"

