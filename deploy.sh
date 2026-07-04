#!/usr/bin/env bash
# Rebuild the site locally and publish it to the gh-pages branch.
# GitHub Pages serves gh-pages directly (see .nojekyll) — no CI build.
#
# Usage:  ./deploy.sh
set -euo pipefail
cd "$(dirname "$0")"

export GEM_HOME="$PWD/.gem"

echo "==> Building site (production)"
rm -rf _site
JEKYLL_ENV=production bundle exec jekyll build --baseurl ""

echo "==> Publishing _site to gh-pages"
touch _site/.nojekyll
pushd _site >/dev/null
rm -rf .git
git init -q
git checkout -q -b gh-pages
git add -A
git -c user.name="Supantho Rakshit" -c user.email="sr2982@princeton.edu" \
    commit -q -m "Deploy site $(date -u +%Y-%m-%dT%H:%MZ)"
git push -f git@github.com:supantho/supantho.github.io.git gh-pages
rm -rf .git
popd >/dev/null

echo "==> Done. Live at https://supantho.github.io (updates in ~1 min)."
echo "    Remember to also commit your source changes on main:"
echo "      git add -A && git commit -m 'update content' && git push"
