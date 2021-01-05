#!/usr/bin/bash
stamp=`date +%s`
git checkout -b $stamp
echo $stamp >> README.md
git add README.md
git commit -m$stamp
git push origin $stamp
gh pr create -t$stamp -b$stamp
git switch trunk
