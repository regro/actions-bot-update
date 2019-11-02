# get creds

# clone the graph
git clone git@github.com:regro/cf-graph-countyfair.git --depth 1

feedstock_name = $GITHUB_REPOSITORY.partition('/')[-1].rpartition('-')[0]

# clone feedstock, or go pull them from GH raw
from conda_forge_tick.make_graph import get_attrs_from_github

# load the feedstock files
cd cf-graph-countyfair
get_attrs_from_github(feedstock_name, 1)
# commit/push up
git commit -am @(f"update {feedstock_name}")
git push 
