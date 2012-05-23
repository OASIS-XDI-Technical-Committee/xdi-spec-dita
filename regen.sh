git fetch github
git rebase --onto master git-svn github/master
./build.sh xdi_graph_model.dita
git commit -a -m "Built docs/xdi_graph_model.pdf"
git svn dcommit
git push github -ff