workflow "Default Label Maker" {
  on = "issues"
  resolves = ["lannonbr/issue-label-manager-action@master"]
}

action "lannonbr/issue-label-manager-action@master" {
  uses = "lannonbr/issue-label-manager-action@master"
  secrets = ["GITHUB_TOKEN"]
}
