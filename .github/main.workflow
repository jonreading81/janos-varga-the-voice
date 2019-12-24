workflow "Deploy Staging" {
  on = "push"
  resolves = ["Deploy"]
}

action "Install" {
  uses = "./.github/npm"
  runs = "npm install"
}

action "Deploy" {
  needs = "Develop"
  secrets = ["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY"]
  uses = "./.github/npm"
  runs = "npm run deploy"
}
