workflow "New workflow" {
  on = "push"
  resolves = ["JCofman/webPagetestAction"]
}

action "JCofman/webPagetestAction" {
  uses = "JCofman/webPagetestAction@1.0.0"
  secrets = ["WEBPAGETEST_API_KEY", "GITHUB_TOKEN"]
  env = {
    TEST_URL = "https://gearside.com/nebula/"
  }
}
