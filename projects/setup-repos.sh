#!/bin/bash
# Setup script to push each project to its respective GitHub repo
# Run this from the projects/ directory

set -e

echo "=== Setting up ContentZVD-v1 ==="
cd ContentZVD-v1
git init
git add .
git commit -m "Add V1 original Презентация landing"
git branch -M main
git remote add origin https://github.com/JumpInside/ContentZVD-v1.git
git push -u origin main --force
cd ..

echo ""
echo "=== Setting up ContentZVD-prereg ==="
# First create the repo if it doesn't exist:
# gh repo create JumpInside/ContentZVD-prereg --public
cd ContentZVD-prereg
git init
git add .
git commit -m "Add V2 prereg Занять место landing"
git branch -M main
git remote add origin https://github.com/JumpInside/ContentZVD-prereg.git
git push -u origin main --force
cd ..

echo ""
echo "=== Setting up ContentZVD-v2 ==="
cd ContentZVD-v2
git init
git add .
git commit -m "Add V3 Матрица landing with Google Sheets integration"
git branch -M main
git remote add origin https://github.com/JumpInside/ContentZVD-v2.git
git push -u origin main --force
cd ..

echo ""
echo "=== All repos pushed! ==="
echo ""
echo "Next steps - Switch Vercel projects:"
echo "1. content-zvd (prj_dPXnXxid82FjZU778cdB2fsD39eP) → JumpInside/ContentZVD-v1"
echo "2. test-content-zvd (prj_wQQJx5Tl9RuNk7EF8DQ2PvqpGm5c) → JumpInside/ContentZVD-prereg"
echo "3. content-zvd-v2 (prj_mxFAPEb5jAvWuZHaEopnWkIL8Ah4) → JumpInside/ContentZVD-v2"
